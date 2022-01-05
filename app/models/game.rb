class Game < ApplicationRecord
  before_validation(on: :create) do
    self.state = {
      0 => { 0 => nil, 1 => nil, 2 => nil },
      1 => { 0 => nil, 1 => nil, 2 => nil },
      2 => { 0 => nil, 1 => nil, 2 => nil }
    }
    self.current_player = [:x, :o].sample
  end

  after_update_commit { broadcast_update }

  def [](row, col)
    state[row.to_s][col.to_s]
  end

  def move!(row, col)
    #Initial state/player
    state[row.to_s][col.to_s] = current_player

    #change player
    self.current_player = current_player == "x" ? "o" : "x"
    self.save!
  end
end
