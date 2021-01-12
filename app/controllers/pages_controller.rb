class PagesController < ApplicationController
  def create_player
    player = Player.create({
      :turn => params["player_turn"],
      :board_num => params["board_num"]
    })

    
  end
end
