class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :edition
      t.string :author

      t.timestamps
    end
  end
end
