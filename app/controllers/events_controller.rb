class EventsController < ApplicationController
  

  def index

  end


  def new
 
  end

  def create
  
  	Event.create title:params[:title],
  				 description:params[:description], 
  				 start_date:params[:start_date], 
  				 price:params[:price],
  				 length:params[:length],
  				 users_id:current_user.id
  end

  def show
    @ListeInvité = Array.new
    @UnEvent = Event.find(params[:id])

    if (Inscription.where(event_id:params[:id], user_id:current_user).count != 0)
      @EstInscrit = true
      puts "est inscrit============================================================"
    else
      @EstInscrit = false
    end

   a = Inscription.where(event_id:params[:id])
  @nbr_inscrit = a.count
  a.each do |i|
    @ListeInvité << User.find(i.user_id)
  end


  end


  def edit
      @Current_event = Event.find(params[:id])
      
  end

  def update

    Event.find(params[:id_event]).update(title:params[:title],
     description: params[:description], 
     start_date: params[:start_date],
     price:params[:price],
     length:params[:length])

     redirect_to ""

  end

  def delete
    Event.find(params[:id]).destroy
    redirect_to '/'
  end

end
