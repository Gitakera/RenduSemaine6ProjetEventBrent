class User < ApplicationRecord
	has_many :events, through: :inscription
	has_many :events
	has_one_attached :avatar
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


   after_create :welcome_send

  	def welcome_send
  	 
   	 UserNotifierMailer.send_signup_email(self).deliver_now



	end
 
end
