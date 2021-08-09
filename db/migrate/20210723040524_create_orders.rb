class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.reference :name, null: false
      t.reference :item, null: false
      t.integer :amount, null: false
      t.integer :payment, null: false
      t.reference :hope_date, null: false
      t.integer :hope_time, null: false
      t.string :order_name,
      t.string :order_zip_code,
      t.integer :order_prefecture,
      t.reference :address,

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
# | order_zip_code   | string     |                                |
# | order_prefecture | integer    |                                |
# | address          | reference  |                                |