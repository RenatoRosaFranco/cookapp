# frozen_string_literal: true
class Recipe < ApplicationRecord
	self.table_name  = 'recipes'
	self.primary_key = 'id'

	after_create :recipe_analize
	after_save   :recipe_analize

  belongs_to :category
  belongs_to :user

  def is_safe?
  	true if safe_flag.eql?(true)
  end

  def recipe_analize
 		# image recognition algoritim
  end
end
