class AddTitleYearToBook < ActiveRecord::Migration
  def change
    add_column :books, :title, :string
    add_column :books, :year, :integer
  end
end
