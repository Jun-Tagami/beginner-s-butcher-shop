class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false
      t.references :item, null: false
      t.integer :reserve_amount, null: false
      t.integer :payment, null: false
      t.date :reserve_date, null: false
      t.integer :reserve_time_id, null: false
      t.string :order_name
      t.string :phone_number
      t.string :order_zip_code
      t.integer :prefecture_id
      t.string :order_address

      t.timestamps
    end
  end
end


# -------------------------------------------------
# | Column           | Type       | Options                        |
# | ---------------- | -----------| ------------------------------ |
# | user             | references | null: false, foreign_key: true |
# | item             | references | null: false, foreign_key: true |
# | amount           | integer    | null: false                    |
# | payment          | integer    | null: false                    |
# | hope_date        | reference  | null: false                    |
# | hope_time        | integer    | null: false                    |
# | order_name       | string     |                                |
# | phone_number     |string      |null: false                     |
# | order_zip_code   | string     |                                |
# | order_prefecture | integer    |                                |
# | address          | reference  |                                |