class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :thumbnail
      t.string :title
      t.text :ingredients
      t.text :instructions
      t.boolean :allow_comments
      t.boolean :status
      t.references :category, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
