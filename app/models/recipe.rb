# frozen_string_literal: true
class Recipe < ApplicationRecord
	self.table_name  = 'recipes'
	self.primary_key = 'id'
	
  belongs_to :category
  belongs_to :user
end
