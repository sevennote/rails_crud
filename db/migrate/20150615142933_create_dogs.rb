class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name, null: false
      t.string :breed, null: false
      t.integer :age

      t.timestamps null: false
    end
  end
end
