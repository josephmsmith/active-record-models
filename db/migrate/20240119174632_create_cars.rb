class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.references :user, null: false, foreign_key: true
      t.string :condition
      t.integer :year

      t.timestamps
    end
  end
end
