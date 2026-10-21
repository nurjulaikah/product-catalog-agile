#!/usr/bin/env bash
# Creates the public repo, labels, the Sprint 1 milestone and the 10 stories.
# Needs: git and the GitHub CLI (gh), logged in with:  gh auth login
# Optional: DRY_RUN=1 only prints the commands. SIMULATE_PROGRESS=1 closes the stories marked Done.
set -euo pipefail

REPO_NAME="${REPO_NAME:-product-catalog-agile}"
MILESTONE="Sprint 1"
DUE="2026-10-23T23:59:59Z"
GOAL="Deliver the core catalog operations: create, retrieve, update, delete and list products."
DRY_RUN="${DRY_RUN:-0}"
SIMULATE_PROGRESS="${SIMULATE_PROGRESS:-0}"

run() { if [ "$DRY_RUN" = "1" ]; then echo "[dry-run] $*"; else "$@"; fi; }

cd "$(dirname "$0")/.."

echo "== 1. Repository"
if [ ! -d .git ]; then run git init -b main; fi
run git add .
run git commit -m "Add issue template, user stories and sprint plan" || true
run gh repo create "$REPO_NAME" --public --source=. --remote=origin --push

echo "== 2. Labels"
make_label() { run gh label create "$1" --color "$2" --description "$3" --force; }
make_label "enhancement" "a2eeef" "Feature customers or administrators will use"
make_label "technical debt" "d93f0b" "Infrastructure work with no customer-facing feature"
for p in 1 2 3 5 8; do make_label "estimate: $p" "ededed" "Story points: $p"; done

echo "== 3. Milestone"
run gh api "repos/{owner}/{repo}/milestones" -f title="$MILESTONE" -f state=open -f description="$GOAL" -f due_on="$DUE"

echo "== 4. Stories (issue number = requirement number)"
tail -n +2 stories/index.tsv | while IFS=$'\t' read -r num title type points sprint status file; do
  args=(--title "$title" --body-file "stories/$file" --label "$type" --label "estimate: $points" --assignee "@me")
  if [ "$sprint" = "yes" ]; then args+=(--milestone "$MILESTONE"); fi
  run gh issue create "${args[@]}"
  if [ "$SIMULATE_PROGRESS" = "1" ] && [ "$status" = "Done" ]; then
    run gh issue close "$num" --comment "Done in $MILESTONE."
  fi
done

cat <<'EOF'

== Done. Next, in the browser:
1. Repo > Projects > New project > Board. Name it "Product Catalog Kanban".
2. Columns: Product Backlog, Sprint Backlog, In Progress, Done.
3. Add issues #1 to #10 to the board and place them as in README.md.
4. Project settings > Visibility > Public. Copy the project URL for the form.
EOF
