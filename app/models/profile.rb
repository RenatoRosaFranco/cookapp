# frozen_string_literal: true
class Profile < ApplicationRecord
  belongs_to :state
  belongs_to :city
  belongs_to :user
end
