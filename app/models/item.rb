class Item < ApplicationRecord
  with_options presence: true do
    validates :name             
    validates :amount            
    validates :price, format: { with: /\A[0-9]+\z/ }            
    validates :detail           
    validates :locality        
    validates :expiry_date      
    validates :preservation
    validates :category_id, numericality: { other_than: 1 }     
  end

  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  
  def self.category(category_id)
    if search
      Item.where(category_id: category_id)
    else
      Item.all
    end
  end
end
