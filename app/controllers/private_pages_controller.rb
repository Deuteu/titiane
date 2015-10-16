class PrivatePagesController < ApplicationController
	before_action :authenticate_user!

	def private
	end
end
