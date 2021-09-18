FactoryBot.define do
  factory :item do
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
