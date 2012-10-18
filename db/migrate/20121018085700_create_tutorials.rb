class CreateTutorials < ActiveRecord::Migration
  def change
    create_table :tutorials do |t|
      t.string :name
      t.string :link

      t.timestamps
    end
  end
end
