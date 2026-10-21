**As a** shopper
**I need** to like a product
**So that** I can show interest and help others find popular items

### Assumptions
- A product keeps a running count of likes.

### Acceptance Criteria
```gherkin
Scenario: Like a product
  Given a product has 10 likes
  When a shopper likes the product
  Then the like count becomes 11
```
