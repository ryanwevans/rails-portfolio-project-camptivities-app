# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




DATA = {
  :camp_counselor_keys =>
    ["name", "age", "leader", "password"],
  :camp_counselors => [
    ["Max Charles", 32, true, "password"],
    ["Skai Jackson", 10, false, "password"],
    ["Kaleo Elam", 15, false, "password"],
    ["Megan Carpenter", 12, false, "password"],
    ["Hayden Byerly", 58, true "password"],
    ["Tenzing Norgay", 55, true "password"],
    ["Davis Cleveland", 18, true, "password"],
    ["Cole Sand", 13, false, "password"],
    ["Winston Wallis", 13, false, "password"]
  ],
  :activity_keys =>
   ["name", "counselors_needed"],
  :activities => [
    ["Bike Riding", 2],
    ["Nature Hike", 2],
    ["Canoeing", 3],
    ["Soccer", 4],
    ["Swimming", 2],
    ["Go Carts", 4],
    ["Volleyball", 2],
    ["Arts and Crafts", 3]
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
