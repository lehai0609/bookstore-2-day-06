class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
<<<<<<< HEAD
		t.timestamps null: false
=======

      t.timestamps null: false
>>>>>>> 160281050086cf9043d6e2c95551516cbca85a6a
    end
  end
end
