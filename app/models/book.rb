## Book model

class Book < ActiveRecord::Base
	belongs_to :author
	has_many :categories
	validates :title, presence: true
	validates :year, numericality: {only_integer: true}
end