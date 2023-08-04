class AddColumnsToOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :name, :string
    add_column :orders, :price, :integer
    add_column :orders, :quantity, :integer
    add_column :orders, :paid, :boolean
  end
end
