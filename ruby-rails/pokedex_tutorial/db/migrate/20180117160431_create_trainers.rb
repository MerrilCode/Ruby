class CreateTrainers < ActiveRecord::Migration[5.1]
  def change
    create_table :trainers do |t|
      t.string :name
      t.integer :age
      t.string :town

      t.timestamps
    end

    add_column :pokemons, :trainer_id, :integer
  end
end
