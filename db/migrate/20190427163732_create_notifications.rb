class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.text :body
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
