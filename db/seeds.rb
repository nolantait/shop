# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#


drawing = Category.create({
  name: "Drawing"})



drawing.products.create(name: "Widgit 1", price: 40.00, image_url: "picture1.jpg", slideshow: true)
drawing.products.create(name: "Widgit 2", price: 50.00, image_url: "picture2.jpg", slideshow: true)
drawing.products.create(name: "Widgit 3", price: 60.00, image_url: "picture3.jpg", slideshow: true)
drawing.products.create(name: "Widgit 4", price: 70.00, image_url: "picture4.jpg", slideshow: true)
drawing.products.create(name: "Widgit 5", price: 80.00, image_url: "picture5.jpg", slideshow: true)
drawing.products.create(name: "Widgit 6", price: 90.00, image_url: "picture6.jpg", slideshow: true)

