class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.text :description
      t.string :picture
      t.decimal :price
      t.references :user, null: false, foreign_key: { to_table: :users }, index:true
      t.references :car, null: false, foreign_key: { to_table: :cars }, index:true
      t.timestamps
    end
  end
end
