class RenameHomeAddressColumns < ActiveRecord::Migration
  def change
    rename_column :homes, :address, :address_street
    rename_column :homes, :number, :address_number
  end
end
