# frozen_string_literal: true
class Bookmark < ApplicationRecord
  self.table_name  = 'bookmarks'
  self.primary_key = 'id'

  belongs_to :recipe
  belongs_to :user
end
