class CreateShipments < ActiveRecord::Migration[5.2]
  def change
    create_table :shipments do |t|
      t.string :description
      t.float :price
      t.float :weight
      t.float :length
      t.float :width
      t.float :height

      t.timestamps
    end
  end
end
