# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

8.times do |n|
  author_name = Faker::Name.name
  author_email = Faker::Internet.email
  author_avatar = Faker::Avatar.image
  author_country = Faker::Address.country
  author_age = rand(10..90)
  author_about = Faker::Lorem.paragraph

  Author.create!(
      name: author_name,
      email: author_email,
      avatar: author_avatar,
      country: author_country,
      age: author_age,
      about: author_about
  )
end

6.times do |n|
  category_name = Faker::Lorem.word
  category_img = Faker::Avatar.image
  Category.create!(
      category_name: category_name,
      image: category_img
  )
end

10.times do
  name = Faker::Name.title
  image = Faker::Avatar.image
  publisher = Faker::Address.country
  year = Faker::Number.number(4)
  isbn = Faker::Number.number(4)
  price = (rand(1.0..100.0) * 100).round / 100.0
  about = Faker::Lorem.paragraph

  author_id = rand(1..8)
  next_author_id = author_id < 8 ? author_id + 1 : author_id - 1

  book = Author.find_by(id: author_id).books.create!(
      title: name,
      publisher: publisher,
      year: year,
      isbn: isbn,
      price: price,
      image: image,
      about: about
  )

  book.authors << Author.where(id: next_author_id).first
  book.save
end
