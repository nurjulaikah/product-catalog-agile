**As a** developer
**I need** every change that passes the tests to be deployed to the cloud automatically
**So that** releases are fast, repeatable and low-risk

### Assumptions
- Infrastructure work with no direct customer-facing feature.
- Depends on the catalog being hosted in the cloud (story #9).

### Acceptance Criteria
```gherkin
Scenario: Passing change is deployed
  Given a developer merges a change into the main branch
  When the delivery pipeline runs and all tests pass
  Then the new version is deployed to the cloud automatically

Scenario: Failing change is blocked
  Given a developer merges a change into the main branch
  When the delivery pipeline runs and a test fails
  Then the deployment is stopped
  And the developer is notified
```
