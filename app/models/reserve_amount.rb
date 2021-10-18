class ReserveAmount < ActiveHash::Base
  self.data = [
    { id: 0, name: '------' },
    { id: 1, name: '1', multiple: 1 },
    { id: 2, name: '2', multiple: 2 },
    { id: 3, name: '3', multiple: 3 },
    { id: 4, name: '4', multiple: 4 },
    { id: 5, name: '5', multiple: 5 },
    { id: 6, name: '6', multiple: 6 },
    { id: 7, name: '7', multiple: 7 },
    { id: 8, name: '8', multiple: 8 },
    { id: 9, name: '9', multiple: 9 },
    { id: 10, name: '10', multiple: 10 }
  ]

  include ActiveHash::Associations
  has_many :items
end
