class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :bodega_id
      t.text :overallreview
      t.boolean :latenight
      t.integer :coffeenumber
      t.text :coffeetext
      t.integer :catnumber
      t.text :cattext
      t.integer :sandwichnumber
      t.text :sandwichtext
      t.integer :hoursnumber
      t.text :hourstext
      t.integer :beernumber
      t.text :beertext
      t.integer :snacknumber
      t.text :snacktext

      t.timestamps
    end
  end
end
