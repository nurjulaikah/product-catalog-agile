**As a** catalog administrator
**I need** to create a product in the catalog
**So that** customers can find and buy new items

### Assumptions
- A product has a name, description, price and category.
- Only authorized administrators can create products.

### Acceptance Criteria
```gherkin
Scenario: Create a new product
  Given a product with a name, description, price and category
  When the administrator sends a request to create the product
  Then the product is saved in the catalog
  And the response contains the new product ID

Scenario: Reject an incomplete product
  Given a product that has no price
  When the administrator sends a request to create the product
  Then the request is rejected with a validation error
  And nothing is saved in the catalog
```
