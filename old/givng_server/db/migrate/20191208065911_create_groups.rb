class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.decimal :budget
      t.integer :givng_id

      t.timestamps
    end
  end
end
