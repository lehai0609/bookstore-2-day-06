# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

	harry_potter = Book.create(title: "Harry Potter", year: 1998)
	jk_rowling = Author.create(name: "JK Rowling", email: "jkl@gmail.com")
	fiction = Category.create(category_name: "fiction")

	steve_jobs = Book.create(title: "Steve Jobs", year: 2012)
	walter_isaacson = Author.create(name: "Walter Isaacson", email: "wi@gmail.com")
	biography = Category.create(category_name: "biography")