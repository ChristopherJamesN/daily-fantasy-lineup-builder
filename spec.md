# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y e.g. User has_many Recipes) (A user has many lineups and a lineup has many players.)
- [x] Include at least one belongs_to relationship (x belongs_to y e.g. Post belongs_to User) (A player belongs to a lineup and a lineup belongs to a user.)
- [x] Include at least one has_many through relationship (x has_many y through z e.g. Recipe has_many Items through Ingredients) (A user has many players through lineups.)
- [x] The "through" part of the has_many through includes at least one user submittable attribute (attribute_name e.g. ingredients.quantity) (player.name, player.position, player.projectedPoints and player.actualPoints)
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item) (User validates password to be at least 6 characters and that username is not take, lineups validate name exists, players validates both name and position exist.)
- [ ] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
- [x] Include a nested form writing to an associated model using a custom attribute writer (form URL, model name e.g. /recipe/new, Item)
- [x] Include signup (how e.g. Devise) (Devise)
- [x] Include login (how e.g. Devise) (Devise)
- [x] Include logout (how e.g. Devise) (Devise)
- [ ] Include third party signup/login (how e.g. Devise/OmniAuth)
- [x] Include nested resource show or index (URL e.g. users/2/recipes) (lineups/:id/players)
- [ ] Include nested resource "new" form (URL e.g. recipes/1/ingredients)
- [x] Include form display of validation errors (form URL e.g. /recipes/new) (Validation errors display on /lineup/new, /lineup/edit, /player/new and /player/edit)

Confirm:
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate
