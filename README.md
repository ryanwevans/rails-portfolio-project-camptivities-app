# Rails Portfolio Project - Camptivities

 Ruby on Rails portfolio project by Ryan Evans attending Flatiron School

Camptivities is an application that connects camps and camp counselors in order to staff camp activities.  Counselors can sign up to oversee camp activities by choosing assignments.  Camp counselors can browse camps and view a camp's available activities, view which assignments are still available, and which other camp counselors have already signed up at each camp!
Counselors can submit an activity "fun rating" after overseeing an activity, so others know how much fun that activity is.  Counselors can also submit comments about activities for others to read more detailed feedback about an activity.
Admin users can create, update and delete camps and activities, too.


## Usage

- After cloning this repo, run `bundle` to install dependencies.
- To create your local database, run `rake db:migrate`.
- Run `rake db:seed` to load seed data for Camps, Camp Counselors, Activities, and Comments.
- You can start the application (without secure connection) by running `rails s` from the application root folder. Then in a browser, go to http://localhost:3000/ to begin.

- Facebook login requires a secure connection, so to start the application utilizing the Facebook login, run `thin start --ssl` from the application root folder.
- In a browser, go to https://localhost:3000/ to begin.




## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ryanwevans/rails-portfolio-project-camptivities-app. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant code of conduct.



## License

The gem is available as open source under the terms of the **MIT License** (http://opensource.org/licenses/MIT).
