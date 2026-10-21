**As a** shopper
**I need** to see a list of all products
**So that** I can browse everything the store offers

### Assumptions
- The list is returned in a consistent order.

### Acceptance Criteria
```gherkin
Scenario: List all products
  Given the catalog contains 25 products
  When a shopper requests the list of all products
  Then all 25 products are returned

Scenario: Empty catalog
  Given the catalog contains no products
  When a shopper requests the list of all products
  Then an empty list is returned
```
