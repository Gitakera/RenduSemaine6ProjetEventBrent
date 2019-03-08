class InscriptionController < ApplicationController
  def new

  end

  def create

  end

  def show
  	@event_name = Event.find(params[:id]).title
  	@event_id = Event.find(params[:id]).id





  end
end
