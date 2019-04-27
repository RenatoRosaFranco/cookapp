class AddColumnSafeFlagToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :safe_flag, :boolean
  end
end
