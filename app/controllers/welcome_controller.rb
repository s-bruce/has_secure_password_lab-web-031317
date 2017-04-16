class WelcomeController < ApplicationController

  def homepage
  	@user = User.find(params[:id])
  end

end