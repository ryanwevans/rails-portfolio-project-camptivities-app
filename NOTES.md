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
  [ ] add 'choose Camp' to Activities index page
  [ ] add grouping Activities by camp on CampCounselor show page
  [ ] add ability for Admin to 'add camp' and it's Activities
  [ ] add resources and nested resources to routes.rb

[x] add Comments model (CampCounselor has_many Comments through Activities)
  [ ] add most recent comment to Activities index page
  [ ] add all comments displayed on Activity show page
  [ ] add activity/:id/comment/new page to submit new comment
  [ ] add resources and nested resources to routes.rb

[ ] improve page layouts (include Camp name, sub-text description of site beneath Header)



```Ignoring ffi-1.9.25 because its extensions are not built. Try: gem pristine ffi --version 1.9.25
Ignoring oj-2.18.5 because its extensions are not built. Try: gem pristine oj --version 2.18.5
Ignoring ffi-1.9.25 because its extensions are not built. Try: gem pristine ffi --version 1.9.25
Ignoring oj-2.18.5 because its extensions are not built. Try: gem pristine oj --version 2.18.5
Traceback (most recent call last):
	9: from /Users/ryanevans/.rvm/gems/ruby-2.5.3/bin/learn-test:23:in `<main>'
	8: from /Users/ryanevans/.rvm/gems/ruby-2.5.3/bin/learn-test:23:in `load'
	7: from /Users/ryanevans/.rvm/gems/ruby-2.5.3/gems/learn-test-2.6.1/bin/learn-test:4:in `<top (required)>'
	6: from /Users/ryanevans/.rvm/gems/ruby-2.5.3/gems/learn-test-2.6.1/bin/learn-test:4:in `require_relative'
	5: from /Users/ryanevans/.rvm/gems/ruby-2.5.3/gems/learn-test-2.6.1/lib/learn_test.rb:2:in `<top (required)>'
	4: from /usr/local/Cellar/ruby/2.5.1/lib/ruby/2.5.0/rubygems/core_ext/kernel_require.rb:122:in `require'
	3: from /usr/local/Cellar/ruby/2.5.1/lib/ruby/2.5.0/rubygems/core_ext/kernel_require.rb:122:in `require'
	2: from /Users/ryanevans/.rvm/gems/ruby-2.5.3/gems/oj-2.18.5/lib/oj.rb:43:in `<top (required)>'
	1: from /usr/local/Cellar/ruby/2.5.1/lib/ruby/2.5.0/rubygems/core_ext/kernel_require.rb:122:in `require'
/usr/local/Cellar/ruby/2.5.1/lib/ruby/2.5.0/rubygems/core_ext/kernel_require.rb:122:in `require': incompatible library version - /Users/ryanevans/.rvm/gems/ruby-2.5.3/gems/oj-2.18.5/lib/oj/oj.bundle (LoadError)
```
