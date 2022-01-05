class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def create
    @game = Game.where(
      :state => {
        0 => { 0 => nil, 1 => nil, 2 => nil },
        1 => { 0 => nil, 1 => nil, 2 => nil },
        2 => { 0 => nil, 1 => nil, 2 => nil }
      },
      :current_player => "x").last

    if @game.present?
      redirect_to @game
    else
      redirect_to Game.create
    end
    
  end
end
