class CreateRankings < ActiveRecord::Migration
  def change
    create_table :rankings do |t|
      t.integer :user_id
      t.integer :tutorial_id
      t.integer :vote

      t.timestamps
    end
  end
end
