class CreateMoves < ActiveRecord::Migration[5.1]
  def change
    create_table :moves do |t|
      t.integer :user_id
      t.integer :game_id
      t.string :type
      t.integer :x1
      t.integer :y1
      t.integer :x2
      t.integer :y2
      t.timestamps
    end
  end
end
