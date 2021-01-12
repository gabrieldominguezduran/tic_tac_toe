class RemovePlayerReference < ActiveRecord::Migration[6.0]
  def change
    remove_reference :boards , :player, index: true, foreign_key: true

    add_reference :boards, :player, index: true, foreign_key: true
  end
end
