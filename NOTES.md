Tasks left to do:

[x] remove counselors_needed from assignments. Change to auto-create two open assignments when the activity is created
[x] add admin attribute to CampCounselor to allow Activity creation
[x] Assignments needs a user-submittable attribute -- rating
[x] fields should be enclosed within a fields_with_errors class
[x] add display of form validation errors
[x] error messages describing the validation failures must be present within the view (edit and new for all controllers/models)
[x] be sure to utilize the nested resources
[x] add OmniAuth Facebook login
[x] refactor to DRY

[x] remove unneeded views
[x] remove unneeded routes
[x] update activities index page to match assignments index page
[x] login isn't validating
[x] make site links only available if logged in
[x] move navigation menu to top
[x] add confirmation popup when deleting counselor account


[x] add Camps model (Camp has_many CampCounselors through Activities)
  [x] add camp_id to activities table
  [x] add camp seed data
  [x] add resources and nested resources to routes.rb
  [ ] add Camp index page
    [ ] link each Camp to the show page
    [ ] Camp show page contains links to each of the Camp Activities indexed
        -this should look/be the same as the CampCounselor/Activities page
        -include form to sign-up for that
  [ ] add/choose Camp name in new Activity form for admin users
  [ ] add Camp name to each Activity on Activities index page
    [ ] sort Activities index (all) page by Camp
  [ ] add Camp name to each Activity on CampCounselor/:id/Activities page
    [ ] sort CampCounselor/:id/Activities index page by camp

[x] add Comments model (CampCounselor has_many Comments through Activities)
  [ ] add link to activity/:id/comment/new on Activity show page to create new comment
  [ ] show all comments on Activity show page
  [ ] view most recent comment for each activity on Activities index page
  [x] add resources and nested resources to routes.rb

[ ] Activity new page isn't creating a new Activity without a Camp assignment.  Returns error that 'description is required' because it's that last error logged

[ ] improve page layouts (include Camp name, sub-text description of site beneath Header)

[ ] Seed data isn't loading the camp counselors-related to secure password??
