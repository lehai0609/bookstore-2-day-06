class Author < ActiveRecord::Base
<<<<<<< HEAD
	has_many :books
	validates :name, presence: true
	validates :email, presence: true
=======
  has_and_belongs_to_many :books

>>>>>>> 160281050086cf9043d6e2c95551516cbca85a6a
end
