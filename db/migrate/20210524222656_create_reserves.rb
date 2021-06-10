class CreateReserves < ActiveRecord::Migration[6.0]
  def change
    create_table :reserves do |t|
      t.references :user, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true
      t.integer :amount_id
      t.integer :payment_id
      t.integer :hope_date
      t.integer :hope_time
      t.references :address, null: false, foreign_key: true

      t.timestamps
    end
  end
end

###########################

# | Column        | Type       | Options                        |
# | ------------- | -----------| ------------------------------ |
# | user          | references | null: false, foreign_key: true |
# | item          | references | null: false, foreign_key: true |
# | amount_id     | integer    | null: false                    |
# | payment_id    | integer    | null: false                    |
# | hope_date     | integer    |                                |
# | hope_time     | integer    |                                |
# | address       | references | null: false, foreign_key: true |
