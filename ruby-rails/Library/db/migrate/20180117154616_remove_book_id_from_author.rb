class RemoveBookIdFromAuthor < ActiveRecord::Migration[5.1]
  def change
    remove_column :authors, :book_id, :integer
  end
end
