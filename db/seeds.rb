# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#rake db:seed    <= you type this in console to move the information from the seed file, usually when you setup the app for first time with some data to get you started.

Product.delete_all
# used to start a fresh database with new data that you get from this seed file after you do rake db:seed

Product.create! (title: 'Programmming Ruby 1.9 & 2.0 ',
	description:
		%{<p>
			Ruby is the fastest growing and most exciting dynamic language out there.  If you need to get working programs delivered fast, you should add Ruby to your toolbox.
		</p>},
		image_url: 'ruby.jpg',
		price: 49.95)

#this is a data entry with product, title, description, image, and price.

