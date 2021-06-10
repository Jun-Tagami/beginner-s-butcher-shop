class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.string :amount, null: false
      t.integer :price, null: false
      t.text :detail, null: false
      t.string :locality, null: false
      t.string :expiry_date, null: false
      t.string :preservation, null: false
      t.integer :category_id, null: false

      t.timestamps
    end
  end
end
