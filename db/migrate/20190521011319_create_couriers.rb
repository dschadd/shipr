class CreateCouriers < ActiveRecord::Migration[5.2]
  def change
    create_table :couriers do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :contact
      t.string :address
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
