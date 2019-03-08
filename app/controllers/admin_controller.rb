class AdminController < ApplicationController
  before_action :is_admin

  def event_r
    @event_tobeshown = Event.find(params[:id])
  end

  def event_u
    @event_tobeupdated = Event.find(params[:id]).update(validated:true)
    redirect_to "/admin/dashboard"
  end

  def event_d
    Event.find(params[:id]).destroy
    redirect_to "/admin/dashboard"
  end

  def index
     @event_tobevalidated = Event.where(validated: false).or(Event.where(validated:nil))
  end



  def user_r
    @user_tobeshown = User.all
  end

  def user_u
    @user_tobeedited = User.find(params[:id])
  end

  def user_d
    @user_tobedeleted = User.find(params[:id]).destroy
  end

  def user_i
    @user_all = User.all
  end 

  def is_admin
    if(!(current_user.status == "admin"))
      redirect_to "/"
    end
  end

end
