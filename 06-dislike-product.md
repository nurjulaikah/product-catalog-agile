**As a** shopper
**I need** to dislike a product
**So that** I can signal items I do not want and improve what is shown to others

### Assumptions
- A product keeps a running count of dislikes.

### Acceptance Criteria
```gherkin
Scenario: Dislike a product
  Given a product has 3 dislikes
  When a shopper dislikes the product
  Then the dislike count becomes 4
```
