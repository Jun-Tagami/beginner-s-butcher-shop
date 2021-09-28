FactoryBot.define do
  factory :order do
    user_id     { 2 }
    item_id   { 2 }
    reserve_amount    { 2 }
    payment   { '2' }
    reserve_date  { '2021-10-10' }
    reserve_time_id { 2 }
    order_name { 'test' }
    phone_number  { 0701234567 }
    order_zip_code  { '111-1111' }
    prefecture_id  { 2 }
    order_address  { 2 }
  end
end


# t.references :user, null: false
# t.references :item, null: false
# t.integer :reserve_amount, null: false
# t.integer :payment, null: false
# t.date :reserve_date, null: false
# t.integer :reserve_time_id, null: false
# t.string :order_name
# t.string :phone_number
# t.string :order_zip_code
# t.integer :prefecture_id
# t.string :order_address