class CreateVendorsweets < ActiveRecord::Migration[5.1]
  def change
    create_table :vendorsweets do |t|
      t.string :name
    end
  end
end
