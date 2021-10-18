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
      it '配送先の情報として、都道府県入力が空欄でも登録できること' do
        @order.prefecture_id = ''
        expect(@order).to be_valid
      end
      it '配送先の情報として、市区町村以下全ての入力が空欄でも登録できること' do
        @order.order_address = ''
        expect(@order).to be_valid
      end
      context '購入ができないとき' do
        it '配送先希望日が必須であること' do
          @order.reserve_date = ''
          @order.valid?
          expect(@order.errors.full_messages).to include("Reserve date can't be blank")
        end
        it '配送希望時刻が必須であること' do
          @order.reserve_time_id = 0
          @order.valid?
          expect(@order.errors.full_messages).to include('Reserve time must be other than 0')
        end
        it '数量入力が必須であること' do
          @order.reserve_amount = 0
          @order.valid?
          expect(@order.errors.full_messages).to include('Reserve amount must be other than 0')
        end
      end
    end
  end
end
