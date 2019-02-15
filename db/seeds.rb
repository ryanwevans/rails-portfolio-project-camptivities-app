# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




DATA = {
  :camp_keys =>
    ["name", "location", "description"],
  :camps => [
    ["Camp Chautaugua", "Upstate New York", "Exclusive 1950's era family resort for those with high-end tastes"],
    ["Camp Adirondack", "Upstate New York", "Nestled on a tranquil lake in the Adirondack Mountains of upstate New York"],
    ["Mt. Baker Camp", "Mt. Baker Ski Area", "When the ski season is over, we have endless hiking trails, climbing, and star-gazing"],
    ["Camp Snoqualmie", "Glacier, Washington", "With several lakes in the area, we focus on water sports and activities"],
    ["Camp Boundary Waters", "Northern Minnesota", "In the land of ten thousand lakes, we have so many that we spend days canoeing and kayaking and nights camping under the clear Minnesota skies"],
  ],
  :camp_counselor_keys =>
    ["name", "email", "age", "admin", "password"],
  :camp_counselors => [
    ["Max Charles", "max@max.com", 32, true, "password"],
    ["Skai Jackson", "skai@skai.com", 10, false, "password"],
    ["Kaleo Elam", "kaleo@kaleo.com", 15, false, "password"],
    ["Megan Carpenter", "megan@megan.com", 12, false, "password"],
    ["Hayden Byerly", "hayden@hayden.com", 58, true, "password"],
    ["Tenzing Norgay", "tenzing@tenzing.com", 55, true, "password"],
    ["Davis Cleveland", "davis@davis.com", 18, true, "password"],
    ["Cole Sand", "cole@cole.com", 13, false, "password"],
    ["Winston Wallis", "winston@winston.com", 13, false, "password"]
  ],
  :activity_keys =>
   ["name", "description", "camp_id"],
  :activities => [
    ["Bike Riding", "Feel the wind in your hair! This ride will take you through scenic vistas!", 1],
    ["Nature Hike", "Get your exercise while winding through country trails along rivers and lakes.", 2],
    ["Canoeing", "Paddle along the calm shores of a beautiful lake.", 3],
    ["Soccer", "Feed your competitive side! Run and kick the ball while having fun with your fellow campers!", 1],
    ["Swimming", "This isn't just swimming! We have diving platforms and fun toys to play with in the lake!", 5],
    ["Go Carts", "Speed along the track and race all your friends to the finish line!", 1],
    ["Volleyball", "Keep the ball in the air! Join a team or come as a team with your friends to play!", 1],
    ["Arts and Crafts", "Are you creative and artistic? Even if you answered no, this is your opportunity to try and have fun with several different arts and crafts!", 4],
    ["Trail Run", "Single track, lots of elevation and the amazing views are the payoff!", 4],
    ["Archery", "Test your accuracy with a bow and arrow!", 5],
    ["Baking", "Practice your favorite recipes and share them with your fellow campers!", 2],
    ["Skateboarding", "These aren't your average skateboards! These are off-road boards that we'll ride down hills!", 2],
    ["Waterskiing", "Glide atop the calm waters of the lake at breathtaking speeds! This activity is open to beginners, so come give it a try! You are guaranteed to have a splashing good time!", 3]
  ],
  :comment_keys =>
   ["title", "content", "camp_counselor_id", "activity_id"],
  :comments => [
    ["Awesome!", "Cupcake ipsum dolor sit amet candy canes jelly beans. Cotton candy tootsie roll cheesecake sesame snaps ice cream jelly sesame snaps. Jujubes gummies apple pie jelly beans jujubes donut soufflé.", 1, 13],
    ["So cool...", "Cupcake ipsum dolor sit. Amet chupa chups muffin apple pie sweet pudding candy canes gingerbread. Sweet roll chocolate apple pie toffee gingerbread.", 2, 12],
    ["Supreme!", "Cupcake ipsum dolor sit. Amet candy canes lemon drops chupa chups caramels caramels soufflé. Sweet cheesecake cupcake. Soufflé chupa chups wafer bear claw biscuit dragée marzipan.", 3, 11],
    ["So. Much. Fun.", "Cupcake ipsum dolor sit amet lollipop soufflé muffin. Icing chocolate cake bear claw. Carrot cake powder bear claw marzipan cake jelly beans cotton candy lollipop candy. Candy canes chocolate cake cotton candy cookie gummi bears caramels brownie croissant.", 4, 10],
    ["Amazing", "Cupcake ipsum dolor sit amet pastry danish carrot cake. Cake pudding donut toffee muffin jelly. Liquorice gummies sweet carrot cake tart sesame snaps powder pie", 5, 9],
    ["Great Time!", "Cupcake ipsum dolor sit. Amet jelly beans donut biscuit cake bear claw pudding cookie. Gingerbread jelly-o jelly candy marshmallow croissant lollipop pudding!", 6, 8],
    ["Super Cool", "Cupcake ipsum dolor. Sit amet cotton candy fruitcake. Apple pie oat cake halvah halvah muffin candy canes muffin icing. Brownie bonbon soufflé jelly-o caramels wafer bear claw tart sweet roll.", 7, 7],
    ["Good Time", "Cupcake ipsum dolor sit amet chupa chups chocolate cake. Soufflé dessert gummies. Pie tart wafer oat cake!", 8, 6],
    ["Neato", "Cupcake ipsum dolor sit amet toffee bear claw topping. Cotton candy tiramisu halvah topping donut soufflé. Halvah oat cake jelly chocolate cake brownie!", 9, 5],
    ["Great Day", "Cupcake ipsum dolor sit. Amet pastry carrot cake fruitcake. Muffin bonbon cake caramels jujubes tootsie roll chocolate cake. Sugar plum jujubes toffee tiramisu macaroon apple pie lollipop biscuit candy canes!", 1, 4],
    ["Awesome Activity", "Cupcake ipsum dolor sit. Amet biscuit powder jelly beans. Chupa chups halvah chocolate tootsie roll lemon drops pastry jujubes. Pudding pastry marshmallow cotton candy topping oat cake cheesecake!", 2, 3],
    ["Really Neat", "Cupcake ipsum dolor sit amet wafer tiramisu sweet jelly. Chocolate cake toffee chocolate bar croissant icing toffee candy candy canes. Cheesecake ice cream marzipan chupa chups marzipan wafer macaroon!", 3, 2],
    ["Super Super!!", "Cupcake ipsum dolor sit. Amet chupa chups candy canes lemon drops caramels dragée sweet powder. Chocolate bar jelly tiramisu gingerbread danish jelly-o. Gummi bears cheesecake dessert!", 4, 1]
  ]
}

def main
  make_camp_counselors
  make_camps
  make_activities
  make_comments
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
      new_activity.send(DATA[:activity_keys][i]+"=", attribute)
    end
    if new_activity.save
      2.times do
        new_activity.assignments.create(:activity_id => new_activity.id, :camp_id => new_activity.camp_id, :filled => false, :rating => 0)
      end
    end
  end
end

def make_camps
  DATA[:camps].each do |camp|
    new_camp = Camp.new
    camp.each_with_index do |attribute, i|
      new_camp.send(DATA[:camp_keys][i]+"=", attribute)
    end
    new_camp.save
  end
end

def make_comments
  DATA[:comments].each do |comment|
    new_comment = Comment.new
    comment.each_with_index do |attribute, i|
      new_comment.send(DATA[:comment_keys][i]+"=", attribute)
    end
    new_comment.save
  end
end

main
