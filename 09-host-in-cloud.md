**As a** developer
**I need** to host the catalog service in the cloud
**So that** it is available to customers at all times and can scale with demand

### Assumptions
- Infrastructure work with no direct customer-facing feature.
- A cloud provider will be chosen during the sprint.

### Acceptance Criteria
```gherkin
Scenario: Catalog is reachable in the cloud
  Given the catalog service is packaged and ready
  When it is deployed to the cloud provider
  Then the catalog API is reachable over the internet
  And the health check returns "OK"
```
