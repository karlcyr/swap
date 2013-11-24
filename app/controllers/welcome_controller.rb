class WelcomeController < ApplicationController

  def index
	@imageroll = Item.limit(10)
  end	

end
