FactoryBot.define do
  factory :order do
    name     { '居酒屋 池袋' }
    amount   { '1kg' }
    price    { 5000 }
    detail   { '美味しい' }
    locality { '山梨県産' }
    expiry_date { '2日間' }
    preservation { '冷蔵10°以下' }
    category_id  { 2 }
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