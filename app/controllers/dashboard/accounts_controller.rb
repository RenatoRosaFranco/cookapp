# frozen_string_literal: true
module Dashboard
	class AccountsController < HomeController
		before_action :authenticate_user!

		def index
		end
	end
end