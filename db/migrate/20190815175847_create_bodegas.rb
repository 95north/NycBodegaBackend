class CreateBodegas < ActiveRecord::Migration[6.0]
  def change
    create_table :bodegas do |t|
      t.float :averagerating
      t.string :name
      t.string :neighborhood

      t.timestamps
    end
  end
end
