# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(:name => "seed-generated product", :description => "I also created this product without using the HTML form!", :image_url => 'https://momentummag.com/wp-content/uploads/2015/01/Sommer-red-high-res-RESIZED.jpg', :color => 'Green', :price => '40')
Product.create(:name => 'Racing Bike', :description => 'The must have for every biker who likes it fast.', :image_url => 'https://images-eu.ssl-images-amazon.com/images/I/81XfDlW2yRL._SL1500_.jpg', :color => 'Red', :price => '45')
Product.create(:name => 'City Bike', :description => 'Good for every situation in the city. With every features for a safe ride', :image_url => 'https://momentummag.com/wp-content/uploads/2015/01/Sommer-red-high-res-RESIZED.jpg', :color => 'Orange', :price => '70')
Product.create(:name => 'Mountainbike', :description => 'The perfect bike for ambitious bikers. Perfect for intensive mountain tours', :image_url => 'http://www.fahrrad.de/fileadmin/mediapool/fde/mountainbike.jpg', :color => 'Black', :price => '90')
