require 'rails_helper'

RSpec.describe Book, type: :model do
	context "it contains title & published year" do
		it "contains title" do
			testBook = Book.new(title: "Test book", year: 2015)
			expect(testBook.title).to_not be_nil
		end
		it "contains year" do
			testBook = Book.new(title: "Test book", year: 2014)
			expect(testBook.year).to_not be_nil
		end
	end

	context "book and title are valid" do
		it "returns valid if correct input" do
			testBook = Book.new(title: "Test book", year: 2014)
			expect(testBook).to be_valid
		end
		it "returns not if input incorrect" do
			testBook = Book.new(year: "Test book")
			expect(testBook).not_to be_valid
		end
	end
end
