class AddColumnCardIdToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :card_id, :integer
  end
end
