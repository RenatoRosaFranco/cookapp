# frozen_string_literal: true
class User < ApplicationRecord
	self.table_name  = 'users'
	self.primary_key = 'id'

	has_many :categories, dependent: :destroy
	has_many :posts, dependent: :destroy
	has_many :bookmarks, dependent: :destroy
	has_many :likes, dependent: :destroy
	has_many :notifications, dependent: :destroy
	has_many :recipes, dependent: :destroy
  has_one	 :profile, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
