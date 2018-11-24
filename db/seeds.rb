# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




DATA = {
  :camp_counselor_keys =>
    ["name", "age", "admin", "password"],
  :camp_counselors => [
    ["Max Charles", 32, true, "password"],
    ["Skai Jackson", 10, false, "password"],
    ["Kaleo Elam", 15, false, "password"],
    ["Megan Carpenter", 12, false, "password"],
    ["Hayden Byerly", 58, true, "password"],
    ["Tenzing Norgay", 55, true, "password"],
    ["Davis Cleveland", 18, true, "password"],
    ["Cole Sand", 13, false, "password"],
    ["Winston Wallis", 13, false, "password"]
  ],
  :activity_keys =>
   ["name", "description"],
  :activities => [
    ["Bike Riding", "Feel the wind in your hair! This ride will take you through scenic vistas!"],
    ["Nature Hike", "Get your exercise while winding through country trails along rivers and lakes."],
    ["Canoeing", "Paddle along the calm shores of a beautiful lake."],
    ["Soccer", "Feed your competitive side! Run and kick the ball while having fun with your fellow campers!"],
    ["Swimming", "This isn't just swimming! We have diving platforms and fun toys to play with in the lake!"],
    ["Go Carts", "Speed along the track and race all your friends to the finish line!"],
    ["Volleyball", "Keep the ball in the air! Join a team or come as a team with your friends to play!"],
    ["Arts and Crafts", "Are you creative and artistic? Even if you answered no, this is your opportunity to try and have fun with several different arts and crafts!"],
    ["Trail Run", "Single track, lots of elevation and the amazing views are the payoff!"],
    ["Archery", "Test your accuracy with a bow and arrow!"],
    ["Baking", "Practice your favorite recipes and share them with your fellow campers!"],
    ["Skateboarding", "These aren't your average skateboards! These are off-road boards that we'll ride down hills!"],
    ["Waterskiing", "Glide atop the calm waters of the lake at breathtaking speeds! This activity is open to beginners, so come give it a try! You are guaranteed to have a splashing good time!"]
  ]
}

def main
  make_camp_counselors
  make_activities
end

def make_camp_counselors
  DATA[:camp_counselors].each do |counselor|
    new_counselor = CampCounselor.new
    counselor.each_with_index do |attribute, i|
      new_counselor.send(DATA[:camp_counselor_keys][i]+"=", attribute)
    end
    new_counselor.save
  end
end

def make_activities
  DATA[:activities].each do |activity|
    new_activity = Activity.new
    activity.each_with_index do |attribute, i|
      new_activity.send(DATA[:activity_keys][i] + "=", attribute)
    end
    new_activity.save
  end
end

main
