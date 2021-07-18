# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



users.create!(
company-name:'test',
company-tel:'000000000',
email:'111@111',
zip-code:'111-111',
preferences-id:'2',
address:'test',
encrypted-password:'111111a'
)


items.create!(
image: File.open('./app/assets/images/beef2.jpg'),
name:'test',
amount:'2',
price:'2',
detail:'test',
locality:'test',
expiry-date:'test',
preservataion:'test'
)
