# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
  + *Using Rails 5.2.1*

- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes)
  + *Activity has_many Assignments (activity#show line 11)*
  + *CampCounselor has_many Assignments (_counselor.html.erb line 35)*

- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
  + *Assignment belongs_to Activities (_assignments_list.html.erb lines 7, 11, 39, 42)*
  + *Assignment belongs_to CampCounselor (_assignments_list.html.erb line 1)*

- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
  + *Camp has_many CampCounselors through Assignments (camp#show line 11)*
	+ *CampCounselor has_many Camps through Assignments (_counselor.html.erb line 43)*

- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
  + *Activity has_many CampCounselors through Assignments (activity#show line 20)*
  + *CampCounselor has_many Activities through Assignments (_counselor.html.erb line 20)*

- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
  + *Assignment.rating*

- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
  + *CampCounselor, Activity, Assignment, Camp*

- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
  + *Activity.all.order(:camp_id) URL:  /activities*

- [x] Include signup (how e.g. Devise)
  + *signup form, ActiveModel has_secure_password, bcrypt, sessions*

- [x] Include login (how e.g. Devise)
  + *login form, ActiveModel has_secure_password, bcrypt, sessions*

- [x] Include logout (how e.g. Devise)
  + *logout form, sessions*

- [x] Include third party signup/login (how e.g. Devise/OmniAuth)
  + *OmniAuth Facebook*

- [x] Include nested resource show or index (URL e.g. users/2/recipes)
  + *camp_counselors/:id/assignments*
  + *camps/:id/activities*

- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
  + *Add: camp/:id/activity/new*

- [x] Include form display of validation errors (form URL e.g. /recipes/new)
  + */activities/new*

Confirm:
- [x] The application is pretty DRY

- [x] Limited logic in controllers

- [x] Views use helper methods if appropriate

- [x] Views use partials if appropriate
