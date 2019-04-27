# frozen_string_literal: true
module Dashboard
	class HomeController < ApplicationController
	  before_action :authenticate_user!

	  def index
	  	# some code here
	  end
	end
end