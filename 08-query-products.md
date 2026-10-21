**As a** shopper
**I need** to filter products by a category or price range
**So that** I can quickly find the items I want

### Assumptions
- Supported filters are category and price range.

### Acceptance Criteria
```gherkin
Scenario: Filter by category
  Given the catalog has products in the categories "shoes" and "bags"
  When a shopper searches for the category "shoes"
  Then only products in the category "shoes" are returned

Scenario: No matching products
  Given no product is in the category "hats"
  When a shopper searches for the category "hats"
  Then an empty list is returned
```
