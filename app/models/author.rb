class Author < ActiveRecord::Base
	validates :name, presence: true
	validates :email, presence: true
  	has_and_belongs_to_many :books
end
