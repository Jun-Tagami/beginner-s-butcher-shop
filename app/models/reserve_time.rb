class ReserveTime < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '8:00  〜 12:00' },
    { id: 3, name: '14:00 〜 16:00' },
    { id: 4, name: '16:00 〜 18:00' },
    { id: 5, name: '18:00 〜 20:00' },
    { id: 6, name: '19:00 〜 21:00' }
  ]

  include ActiveHash::Associations
  has_many :users
  has_many :orders

end
