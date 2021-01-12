class RemovePlayerIdFromBoard < ActiveRecord::Migration[6.0]
  def change
    remove_column :boards, :player_id
  end
end
