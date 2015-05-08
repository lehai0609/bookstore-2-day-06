require 'rails_helper'

RSpec.describe Author, type: :model do
	context "it contains name & email" do
		it "contains name" do
			author_test = Author.new(name: "JK Rowling", email: "jkl@gmail.com")
			expect(author_test.name).to_not be_nil
		end
		it "contains email" do
			author_test = Author.new(name: "JK Rowling", email: "jkl@gmail.com")
			expect(author_test.email).to_not be_nil
		end
	end

	context "name & email are valid" do
		it "validates name" do
			author_test = Author.new(email: "jkl@gmail.com")
			expect(author_test).not_to be_valid
		end
		it "validates email" do
			author_test = Author.new(name: "JK Rowling")
			expect(author_test).not_to be_valid
		end
	end
end
