FactoryBot.define do
  factory :user do
    company_name          { 'test' }
    company_tel           { "0311111111" }
    email                 { Faker::Internet.free_email }
    zip_code              { '123-4567' }
    prefecture_id         { 10 }
    address               { '港区港３−３−３' }
    password              { 'aaa000' }
    password_confirmation { password }
  end
end
