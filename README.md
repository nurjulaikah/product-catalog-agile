# Product Catalog: Agile Kanban Board

Planning material for the backend of an e-commerce product catalog, worked through as a Scrum team: product backlog, sprint backlog, a sprint milestone and a burndown chart.

**Kanban board:** _add the link to the public GitHub Project here_

## Product backlog

Each story follows the template *As a ... I need ... So that ...* and has Gherkin acceptance criteria (*Given ... When ... Then ...*). Issue numbers match the stakeholder requirement numbers.

| Issue | Story | Label | Estimate | Milestone | Board column |
|---|---|---|---|---|---|
| #1 | [Create a product in the catalog](stories/01-create-product.md) | enhancement | 3 | Sprint 1 | Done |
| #2 | [Retrieve a product from the catalog](stories/02-retrieve-product.md) | enhancement | 2 | Sprint 1 | Done |
| #3 | [Update a product in the catalog](stories/03-update-product.md) | enhancement | 3 | Sprint 1 | In Progress |
| #4 | [Delete a product from the catalog](stories/04-delete-product.md) | enhancement | 2 | Sprint 1 | In Progress |
| #5 | [Like a product](stories/05-like-product.md) | enhancement | 2 | - | Product Backlog |
| #6 | [Dislike a product](stories/06-dislike-product.md) | enhancement | 2 | - | Product Backlog |
| #7 | [List all products in the catalog](stories/07-list-products.md) | enhancement | 3 | Sprint 1 | In Progress |
| #8 | [Query a subset of products](stories/08-query-products.md) | enhancement | 5 | - | Product Backlog |
| #9 | [Host the catalog in the cloud](stories/09-host-in-cloud.md) | technical debt | 8 | - | Product Backlog |
| #10 | [Automate deployment of new changes to the cloud](stories/10-automate-deployment.md) | technical debt | 5 | - | Product Backlog |

## Labels

- `enhancement`: a feature customers or administrators will use (requirements 1 to 8)
- `technical debt`: infrastructure work with no customer-facing feature (requirements 9 and 10, cloud hosting and automated deployment)
- `estimate: N`: story points on the scale 1, 2, 3, 5, 8

## Sprint 1

Goal: deliver the core catalog operations (create, retrieve, update, delete and list products). Committed: 13 story points across 5 stories (#1, #2, #3, #4, #7). The burndown chart is in [docs/burndown_sprint1.png](docs/burndown_sprint1.png), with its data in [docs/burndown_sprint1.csv](docs/burndown_sprint1.csv).

## Board columns

Product Backlog, Sprint Backlog, In Progress, Done.

## Repository layout

- `.github/ISSUE_TEMPLATE/user_story.md`: the story template
- `stories/`: the text of each story
- `docs/`: burndown chart and data
- `scripts/setup_github.sh`: creates the labels, milestone and issues
