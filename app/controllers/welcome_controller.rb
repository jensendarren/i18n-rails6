class WelcomeController < ApplicationController
  def index
    @cronuts_url = params['cronuts_url']
    @donuts_url = params['donuts_url']
  end
end