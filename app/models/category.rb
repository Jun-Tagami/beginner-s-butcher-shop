class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '輸入牛肉' },
    { id: 3, name: '輸入豚肉' },
    { id: 4, name: '輸入鶏肉' },
    { id: 5, name: '国産牛肉' },
    { id: 6, name: '国産豚肉' },
    { id: 7, name: '国産鶏肉' },
    { id: 8, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :items
end
