class CreateRecipeIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :recipe_ingredients, id: false do |t|
      t.references :recipe
      t.references :ingredient

      t.timestamps
    end
    add_index :recipe_ingredients, :recipe_id
    add_index :recipe_ingredients, :ingredient_id
  end
end
