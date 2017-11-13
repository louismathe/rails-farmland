class AddFarmReferencesToProduct < ActiveRecord::Migration[5.0]
  def change
    add_reference :products, :farm, foreign_key: true
  end
end
