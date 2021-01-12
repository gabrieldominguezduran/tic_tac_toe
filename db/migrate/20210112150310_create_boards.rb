class CreateBoards < ActiveRecord::Migration[6.0]
  def change
    create_table :boards do |t|
      t.references :player, null: false, foreign_key: true
      t.integer :player_turn
      t.integer :board_num
      t.integer :sq_1
      t.integer :sq_2
      t.integer :sq_3
      t.integer :sq_4
      t.integer :sq_5
      t.integer :sq_6
      t.integer :sq_7
      t.integer :sq_8
      t.integer :sq_9

      t.timestamps
    end
  end
end
