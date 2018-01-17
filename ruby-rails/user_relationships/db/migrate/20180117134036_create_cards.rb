class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string :bank_name
      t.string :card_type

      t.timestamps
    end
  end
end
