class AddColumnUserIdToCards < ActiveRecord::Migration[5.1]
  def change
    add_column :cards, :user_id, :integer
  end
end
