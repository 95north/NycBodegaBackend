# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create({
	username: "Annie",
	displayname: "Annie M Bodega Queen",
	neighborhood: "East Village"
})
u2 = User.create({
	username: "Tori",
	displayname: "Tori Sigwich",
	neighborhood: "Bushwick"
})
u3 = User.create({
	username: "XO",
	displayname: "XO",
	neighborhood: "East Village"
})
u4 = User.create({
	username: "MJ",
	displayname: "MJ",
	neighborhood: "Bushwick"
})
u5 = User.create({
	username: "Flatiron",
	displayname: "Flatiron Charging Bull",
	neighborhood: "Financial District"
})


b1 = Bodega.create({
	name: "Sunny & Annie's",
	neighborhood: "East Village",
	averagerating: 4.4
})
b2 = Bodega.create({
	name: "Santa Ana Deli and Grocery",
	neighborhood: "Bushwick",
	averagerating: 3.8
})
b3 = Bodega.create({
	name: "New York Grill & Deli",
	neighborhood: "East Village",
	averagerating: 5.0
})
b4 = Bodega.create({
	name: "Valery Deli Grocery Store",
	neighborhood: "Bushwick",
	averagerating: 3.9
})
b5 = Bodega.create({
	name: "Cafe Plaza Deli",
	neighborhood: "Financial District",
	averagerating: 4.1
})


r1 = Review.create({
		user_id: 1,
	   bodega_id: 3,
	   overallreview: 5,
	   latenight: true,
	   coffeenumber: 5,
	   coffeetext: "best iced coffee ever",
	   catnumber: 1,
	   cattext: "no cat :(",
	   sandwichnumber: 1,
	   sandwichtext: "crunchy and good tomatoes",
	   hoursnumber: 5,
	   hourstext: "5 stars cause theyre open at 5",
	   beernumber: 5,
	   beertext: "mixed six pack heaven",
	   snacknumber: 4,
	   snacktext: "no healthy options"
})

r2 = Review.create({
		user_id: 2,
	   bodega_id: 3,
	   overallreview: 4,
	   latenight: true,
	   coffeenumber: 1,
	   coffeetext: "ok",
	   catnumber: 0,
	   cattext: "",
	   sandwichnumber: 0,
	   sandwichtext: "never had",
	   hoursnumber: 4,
	   hourstext: "open late!",
	   beernumber: 3,
	   beertext: "standard selection, very cold",
	   snacknumber: 4,
	   snacktext: "good spread"
})

r3 = Review.create({
		user_id: 2,
	   bodega_id: 1,
	   overallreview: 4,
	   latenight: true,
	   coffeenumber: 4,
	   coffeetext: "really good! nondairy options",
	   catnumber: 0,
	   cattext: "no kittie",
	   sandwichnumber: 0,
	   sandwichtext: "never had, good wraps menu though",
	   hoursnumber: 5,
	   hourstext: "24/7!",
	   beernumber: 3,
	   beertext: "standard selection, a few seasonal choices",
	   snacknumber: 5,
	   snacktext: "off the hook"
})