class BoardController < ApplicationController
  def create_board
    
    player = Player.find(params['player_id'])
    board = Board.create({
      :player_turn => params['player_turn'],
      :board_num => params['board_num']
    })
    
  end
end
