class Order < ApplicationRecord
  belongs_to :user
  belongs_to :item

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture, foreign_key:'prefecture_id'
  belongs_to :reserve_time, foreign_key:'reserve_time_id'

  with_options presence: true do
    validates :order_zip_code, format: { with: /\A[0-9]{3}-[0-9]{4}\z/, message: 'is invalid. Include hyphen(-)' }
    validates :reserve_amount
    validates :payment
    validates :reserve_date
    validates :reserve_time_id
  end

  with_options numericality: { other_than: 0 } do
    validates :reserve_amount
    # validates :payment
    validates :reserve_time_id
  end

  def save2
    # ユーザーの情報を保存し、「order」という変数に入れている
    orders = Order.create(user_id: user_id, item_id: item_id)
    # 住所の情報を保存
    Address.create(order_id: order.id, postal_code: postal_code, area_id: area_id, municipalities: municipalities,
                   house_number: house_number, building_name: building_name, phone_number: phone_number)
  end
end
