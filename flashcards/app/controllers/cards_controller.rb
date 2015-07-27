class CardsController < ApplicationController
	before_filter :authenticate
	
	def show
		@deck = get_deck
		@card = get_card @deck
	end

	def new
		@deck = get_deck
		@card = @deck.cards.new
	end

	def create		
		@deck = get_deck
		@card = @deck.cards.new(card_params)
		@card.save

		redirect_to @deck
	end

	def edit
		@deck = get_deck
		@card = get_card @deck
	end

	def update
		@deck = get_deck
		@card = get_card @deck
		@card.update_attributes(card_params)
		
		redirect_to [@deck, @card]
	end

	def destroy
		@deck = get_deck
		@card = get_card @deck
		@card.destroy

		redirect_to @deck
	end

	private

	def card_params
		params.require(:card).permit(:front, :back)		
	end

	def get_deck
		current_user.decks.find(params[:deck_id])
	end

	def get_card(deck)
		deck.cards.find(params[:id])
	end
end