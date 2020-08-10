class CreateJoinTableTagRecipe < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes_tags, id: false do |t|
      t.integer :tag_id, null: false
      t.integer :recipe_id, null: false
      t.index [:tag_id, :recipe_id]
    end
  end
end
