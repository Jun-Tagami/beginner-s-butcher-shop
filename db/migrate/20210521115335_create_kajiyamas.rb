class CreateKajiyamas < ActiveRecord::Migration[6.0]
  def change
    create_table :kajiyamas do |t|
      t.string  :name, null: false, foreign_key: true 
      t.string  :encrypted_password, null: false, foreign_key: true 

      t.timestamps
    end
  end
end

###########################################3
# | Column                | Type      | Options                        |
# | --------------------- | ----------| ------------------------------ |
# | name                  | string    | null: false                    |
# | encrypted_password    | string    | null: false                    |