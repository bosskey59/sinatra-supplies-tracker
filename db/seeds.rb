#
# File.join("usr", "mail", "gumby")   #=> "usr/mail/gumby"
#
# File.join("app", "db", "seeds", "*.rb").sort.each do |seed|
#   load seed
# end



Project.create!([{
  name: "Girls Get Science",
  project_type: "event",
  date: "May 4, 2019",
  attendees: "100",
  supplies_budget: "300"
},
{
  name: "Newport Mills",
  project_type: "event",
  date: "April 29, 2019",
  attendees: "40",
  supplies_budget: "150"
},
{
  name: "Art of Math",
  project_type: "class",
  date: "April 24, 2019",
  attendees: "10",
  supplies_budget: "200"
},
{
  name: "Flora Singer Week 1",
  project_type: "camp",
  date: "June 22, 2019",
  attendees: "35",
  supplies_budget: "350"
},
{
  name: "Chemistry",
  project_type: "class",
  date: "April 30, 2019",
  attendees: "10",
  supplies_budget: "150"
},
{
  name: "Crime Scene",
  project_type: "party",
  date: "July 11, 2019",
  attendees: "12",
  supplies_budget: "40"
}])

Supply.destroy_all

Supply.create!([{
  name: "glue",
  supplier: "Amazon",
  supplier_link: "http://www.amazon.com",
  estimated_price: "5",
  quantity_needed: "300"
}])

User.create!([{
  name: "Joan",
  email: "joan@gradlab.com",
  password: "password"
},
{
  name: "Laura",
  email: "laura@quinby.com",
  password: "password"
},
{
  name: "Will",
  email: "will@whale.com",
  password: "password"
},
{
  name: "Frances",
  email: "frances_h@mom_of_two.com",
  password: "password"
},
{
  name: "Natalia",
  email: "natalia_g@hero.com",
  password: "password"
},
{
  name: "Angela",
  email: "sissy@boss.com",
  password: "password"
}])
