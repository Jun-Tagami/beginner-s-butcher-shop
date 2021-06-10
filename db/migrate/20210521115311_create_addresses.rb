class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :zip_code, null: false
      t.integer :preferences_id, null: false
      t.string :address, null: false
      t.references  :user, null: false, foreign_key: true 

      t.timestamps
    end
  end
end


##########################################33
# | Column            | Type       | Options                        |
# | ----------------- | ---------- | -------------------------------|
# | zip_code          | string     | null: false                    |
# | preferences_id    | integer    | null: false                    |
# | address           | string     | null: false                    |
# | user              | references | null: false, foreign_key: true |