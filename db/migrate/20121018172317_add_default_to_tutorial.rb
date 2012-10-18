class AddDefaultToTutorial < ActiveRecord::Migration
  def change
    change_column_default(:tutorials, :cached_rating, 0)
  end
end
