class CreateFarms < ActiveRecord::Migration[5.0]
  def change
    create_table :farms do |t|
      t.string :name
      t.string :address
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
