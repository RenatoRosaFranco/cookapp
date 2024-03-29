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

  after_create :create_profile

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:facebook, :google_oauth2, :instagram]

  def create_profile
    Profile.create({user_id: self.id})
  end

  def self.new_with_session (params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && 
       session["devise.facebook_data"]["extra"]["raw_info"]
       user.email = data["email"] if user.email.blank?
      end
    end
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
     user.email = auth.info.email
     user.password = Devise.friendly_token[0,20]
     user.name = auth.info.name   # assuming the user model has a name
     user.avatar = auth.info.image # assuming the user model has an image
    end
  end
end
