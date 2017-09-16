class CreateChessPieces < ActiveRecord::Migration[5.1]
  def change
    create_table :chess_pieces do |t|
      t.integer :user_id
      t.integer :game_id
      t.string :type
      t.integer :x
      t.integer :y
      t.boolean :captured
      t.timestamps
    end
  end
end
