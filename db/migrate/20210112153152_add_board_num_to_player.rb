class AddBoardNumToPlayer < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :board_num, :integer
  end
end
