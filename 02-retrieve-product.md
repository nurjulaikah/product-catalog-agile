**As a** shopper
**I need** to view a single product by its ID
**So that** I can read its details before I buy

### Assumptions
- Every product has a unique ID.

### Acceptance Criteria
```gherkin
Scenario: Retrieve an existing product
  Given a product with ID 101 exists in the catalog
  When a shopper requests product 101
  Then the details of product 101 are returned

Scenario: Product does not exist
  Given no product with ID 999 exists
  When a shopper requests product 999
  Then a "not found" message is returned
```
