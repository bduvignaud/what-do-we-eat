class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.integer :rate
      t.string :budget
      t.integer :prep_time
      t.string :name
      t.string :difficulty
      t.integer :people_quantity
      t.integer :cook_time
      t.integer :total_time
      t.string :image
      t.integer :nb_comments

      t.timestamps
    end
  end
end
