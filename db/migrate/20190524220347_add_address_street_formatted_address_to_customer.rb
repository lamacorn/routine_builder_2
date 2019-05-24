class AddAddressStreetFormattedAddressToCustomer < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :address_street_formatted_address, :string
  end
end
