# frozen_string_literal: true
module Dashboard
	class ProfilesController < HomeController
		before_action :authenticate_user!

		def index
		end
	end
end