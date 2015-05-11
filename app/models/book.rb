## Book model

class Book < ActiveRecord::Base
<<<<<<< HEAD
	belongs_to :author
	has_many :categories
	validates :title, presence: true
	validates :year, numericality: {only_integer: true}
=======
  has_and_belongs_to_many :authors

>>>>>>> 160281050086cf9043d6e2c95551516cbca85a6a
end