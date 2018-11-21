class CreateSumptoms < ActiveRecord::Migration
  def change
    create_table :sumptoms do |t|
      t.integer :animal_id
      t.integer :problem_id

      t.timestamps null: false
    end
  end
end
