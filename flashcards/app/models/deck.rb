class Deck < ActiveRecord::Base	
	has_many :cards
	belongs_to :use
end