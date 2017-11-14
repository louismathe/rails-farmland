class AddPhotoToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :photo, :text
  end
end
