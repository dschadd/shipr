class CreateConsignees < ActiveRecord::Migration[5.2]
  def change
    create_table :consignees do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :street_address
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
