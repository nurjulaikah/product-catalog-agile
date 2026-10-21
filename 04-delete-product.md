**As a** catalog administrator
**I need** to delete a product
**So that** discontinued items no longer appear to customers

### Assumptions
- Deleting a product is permanent.

### Acceptance Criteria
```gherkin
Scenario: Delete an existing product
  Given a product with ID 101 exists in the catalog
  When the administrator deletes product 101
  Then the product is removed from the catalog
  And later requests for product 101 return "not found"
```
