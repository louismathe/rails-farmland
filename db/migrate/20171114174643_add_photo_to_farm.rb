class AddPhotoToFarm < ActiveRecord::Migration[5.0]
  def change
    add_column :farms, :photo, :text
  end
end
