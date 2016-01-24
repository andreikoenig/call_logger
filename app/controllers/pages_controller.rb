class PagesController < ApplicationController

	def index
    authorize Page
	end

end