class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.decimal :price, precision: 5, scale: 2
      t.boolean :is_available
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
