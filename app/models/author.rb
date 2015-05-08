class Author < ActiveRecord::Base
	has_many :books
	validates :name, presence: true
	validates :email, presence: true
end
