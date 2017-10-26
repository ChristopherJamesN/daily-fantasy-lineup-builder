# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y e.g. User has_many Recipes) (A user has many lineups and a lineup has many players.)
- [x] Include at least one belongs_to relationship (x belongs_to y e.g. Post belongs_to User) (A player belongs to a lineup and a lineup belongs to a user.)
- [x] Include at least one has_many through relationship (x has_many y through z e.g. Recipe has_many Items through Ingredients) (A user has many players through lineups.)
- [x] Add this to lineups_players table add comment to player specific for the player. The "through" part of the has_many through includes at least one user submittable attribute (attribute_name e.g. ingredients.quantity) (lineups_players.player_comment)
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item) (User validates password to be at least 6 characters and that username is not take, lineups validate name exists, players validates both name and position exist.)
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes) (user.lineups.most_used_player, URL: users/show, also lineups.this_weeks_lineups, URL: users/show)
- [x] Include a nested form writing to an associated model using a custom attribute writer (form URL, model name e.g. /recipe/new, Item)
- [x] Include signup (how e.g. Devise) (Devise)
- [x] Include login (how e.g. Devise) (Devise)
- [x] Include logout (how e.g. Devise) (Devise)
- [x] Include third party signup/login (how e.g. Devise/OmniAuth) (Facebook login using Devise/OmniAuth)
- [x] Include nested resource show or index (URL e.g. users/2/recipes) (lineups/:id/players can view the players in any given lineup from the lineup show page.)
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients) (lineups/:id/players/new will create a new player from the lineup show page.)
- [x] Include form display of validation errors (form URL e.g. /recipes/new) (Validation errors display on /lineup/new, /lineup/edit, /player/new and /player/edit)

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate
