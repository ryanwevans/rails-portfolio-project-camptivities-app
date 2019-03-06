# Rails Portfolio Project - Camptivities

Flatiron School rails portfolio project by Ryan Evans

Camptivities is an application that connects camps and camp counselors.  Counselors can sign up to oversee camp activities through assignments.  Browse camps to view their available activities, which assignments are still available, and which other camp counselors have already signed up!
Submit "fun ratings" after overseeing an activity, so others know how fun that activity is.  And, counselors can submit comments on activities for others to read.


## Usage

- After cloning the repo, run bundle to install dependencies.
- To migrate your local database, run 'rake db:migrate'.
- Run 'rake db:seed' to load seed data for Camps, Camp Counselors, Activities, and Comments.
- Facebook login requires a secure connection, so to start the application, run 'thin start --ssl' from the application root folder.
- In a browser, go to https://localhost:3000/ to begin.

- You can start the application (without Facebook login capabilities) by running 'rails s' from the application root folder. Then in a browser, go to http://localhost:3000/ to begin.



## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ryanwevans/rails-portfolio-project-camptivities-app. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant code of conduct.



## License

The gem is available as open source under the terms of the **MIT License** (http://opensource.org/licenses/MIT).
