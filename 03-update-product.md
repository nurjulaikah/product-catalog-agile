**As a** catalog administrator
**I need** to update the details of a product
**So that** prices and descriptions stay accurate

### Assumptions
- Only the fields that are sent are changed.

### Acceptance Criteria
```gherkin
Scenario: Update a product price
  Given a product exists with a price of $20
  When the administrator updates the price to $25
  Then the catalog shows a price of $25
  And the other fields stay the same

Scenario: Update a product that does not exist
  Given no product with ID 999 exists
  When the administrator tries to update product 999
  Then a "not found" error is returned
```
