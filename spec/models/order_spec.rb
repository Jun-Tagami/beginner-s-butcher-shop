require 'rails_helper'

RSpec.describe Order, type: :model do
  before do
    order = FactoryBot.create(:order)
    item = FactoryBot.create(:item)
    user = FactoryBot.create(:user)
    @order = FactoryBot.build(:order, item_id: item.id, user_id: user.id)
    sleep 0.5 # 復習用→これを使うことでサーバーの負担が減る  データベースに保存する間を与えてあげる。errorが出てしまう。sever criant errorが出る。
  end

  describe '購入機能' do
    context '購入ができるとき' do
      it 'すべての情報が入力されていれば登録できること' do
        expect(@order).to be_valid
      end
      it '配送先の情報として、宛先氏名が空欄でも登録できること' do
        @order.order_name = ''
        expect(@order).to be_valid
      end
      it '配送先の情報として、電話番号が空欄でも登録できること' do
        @order.phone_number = ''
        expect(@order).to be_valid
      end
      it '配送先の情報として、郵便番号が空欄でも登録できること' do
        @order.order_zip_code = ''
        expect(@order).to be_valid
      end

      # end
      # context '新規登録できないとき' do
      #   it '配送先の情報として、郵便番号が必須であること' do
      #     @order_address.postal_code = ''
      #     @order_address.valid?
      #     expect(@order_address.errors.full_messages).to include("Postal code can't be blank")
      #   end
    end
  end
end
