class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.string :amount, null: false
      t.integer :price, null: false
      t.text :detail, null: false
      t.string :locality, null: false
      t.string :expriry_date, null: false
      t.string :preservation, null: false

      t.timestamps
    end
  end
end

###############################################
# | Column           | Type      | Options                        |
# | ---------------- | ----------| ------------------------------ |
# | name             | string    | null: false                    |
# | amount           | string    | null: false                    |
# | price            | integer   | null: false                    |
# | detail           | text      | null: false                    |
# | locality         | string    | null: false                    |
# | expiry-date      | string    | null: false                    |
# | preservation     | string    | null: false                    |