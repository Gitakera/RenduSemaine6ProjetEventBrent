class Event < ApplicationRecord
	has_many :users, through: :inscription
	
end
