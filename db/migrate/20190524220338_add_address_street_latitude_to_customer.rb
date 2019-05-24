class AddAddressStreetLatitudeToCustomer < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :address_street_latitude, :float
  end
end
