class WelcomeController < ApplicationController
  before_action :authenticate_account!

	def index       
    end
end
