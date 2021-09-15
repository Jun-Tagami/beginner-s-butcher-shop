# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#rails db:seedでUserとItemが登録できます。

User.create!(
company_name: 'test',
company_tel: '000000000',
email: '444@444',
zip_code: '111-1111',
prefecture_id: '2',
address: 'test',
password: '111111'
)


item = Item.new(
name:'test',
amount:'2kg当り',
price:'2',
detail:'test',
locality:'test',
expiry_date:'test',
preservation:'test',
category_id: '2',
)
item.image.attach(io: File.open(Rails.root.join("app/assets/images/beef2.jpg")), filename: "beef2.jpg")
item.save!
