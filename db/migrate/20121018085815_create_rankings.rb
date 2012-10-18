class CreateRankings < ActiveRecord::Migration
  def change
    create_table :rankings do |t|
      t.int :user_id
      t.int :tutorial_id
      t.int :vote

      t.timestamps
    end
  end
end
