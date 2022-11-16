class PhoneNumberChangeString1 < ActiveRecord::Migration[7.0]
  def change
    change_column :restaurants, :phone_number, :string
    add_reference :review, :restaurant
  end
end
