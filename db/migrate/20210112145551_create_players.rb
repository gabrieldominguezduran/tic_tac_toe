class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.integer :turn
      t.integer :win

      t.timestamps
    end
  end
end
