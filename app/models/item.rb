class Item < ApplicationRecord
  with_options presence: true do
    validates :name             
    validates :amount            
    validates :price, format: { with: /\A[0-9]+\z/ }            
    validates :detail           
    validates :locality        
    validates :expiry_date      
    validates :preservation     
  end

  has_one_attached :image
end
