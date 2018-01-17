class CreatePokemons < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :breed
      t.text :bio
      t.integer :lvl
      t.string :type
    end
  end
end
