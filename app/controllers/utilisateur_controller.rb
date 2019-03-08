class UtilisateurController < ApplicationController

	def show
		@EvenementCree = Event.where(users_id: current_user.id)
		@user = User.find(current_user.id)

	end
	def edit
		@user = User.find(current_user.id)
		
	end
	def update
		@user = User.find(current_user.id)
		@user.update(first_name: params[:first_name], last_name: params[:last_name], description: params[:description])
		@user.avatar.attach(params[:avatar])



		redirect_to "/utilisateur/<%= current_user.id %>"
	end
	def destroy
		@Event = Event.where(users_id: current_user.id)
		@Event.destroy_all
		@user = User.find(current_user.id)
		@user.destroy
		redirect_to '/'
	end


end
