class HomeController < ApplicationController
	before_action :authenticate_user!

  def index
  	@EvenementTout = Event.where(validated:true)

  end

  def secret
  	
  end
end
