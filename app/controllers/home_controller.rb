class HomeController < ApplicationController
  def index
    @investors = Investor.all
  end
end