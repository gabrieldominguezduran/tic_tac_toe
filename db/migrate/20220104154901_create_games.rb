class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.json :state
      t.string :current_player

      t.timestamps
    end
  end
end
