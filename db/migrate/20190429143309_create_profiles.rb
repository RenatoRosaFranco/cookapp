# frozen_string_literal: true
class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table   :profiles do |t|
      t.date       :birthdate
      t.string     :gender
      t.references :state, foreign_key: true
      t.references :city, foreign_key: true
      t.text       :bio
      t.references :user

      t.timestamps
    end
  end
end
