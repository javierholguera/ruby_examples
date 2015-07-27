class DecksController < ApplicationController
	before_filter :authenticate

	def index
		@decks = current_user.decks
	end

	def show
		@deck = get_deck
		@cards = @deck.cards
	end

	def new 
		@deck = current_user.decks.new		
	end

	def create
		@deck = current_user.decks.new(deck_params)
		@deck.save

		redirect_to decks_path
	end

	def edit
		@deck = get_deck
	end

	def update
		@deck = get_deck
		@deck.update_attributes(deck_params)
		
		redirect_to @deck
	end

	def destroy
		@deck = get_deck
		@deck.destroy

		redirect_to decks_path
	end


	private 

	def deck_params
		params.require(:deck).permit(:name)
	end

	def get_deck
		current_user.decks.find(params[:id])
	end
end