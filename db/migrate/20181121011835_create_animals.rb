class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.integer :category_id
      t.string :born_on
      t.string :date
      t.boolean :female

      t.timestamps null: false
    end
  end
end
