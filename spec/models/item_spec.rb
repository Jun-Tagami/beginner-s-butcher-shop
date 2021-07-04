require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
    @item.image = fixture_file_upload('app/assets/images/gift.jpg') 
  end

  describe '出品商品登録' do
    context '商品が登録できる時' do
      it "全ての項目の入力が存在すれば登録できる" do
        expect(@item).to be_valid
      end
    end

    context '商品が登録できない時' do
      it '商品名が空だと登録できない' do
        @item.name = ""
        @item.valid?
        expect(@item.errors.full_messages).to include "Name can't be blank"
      end

      it 'amountが空だと登録ができない' do
        @item.amount = ""
        @item.valid?
        expect(@item.errors.full_messages).to include "Amount can't be blank"
      end

      it 'priceが空だと登録できない' do
        @item.price = ""
        @item.valid?
        expect(@item.errors.full_messages).to include "Price can't be blank"
      end

      it 'priceは半角英数混合では登録できない' do
        @item.price = "300ponds"
        @item.valid?
        expect(@item.errors.full_messages).to include "Price is not included in the list"
      end

      it 'priceは半角英語では登録できない' do
        @item.price = "five hundred"
        @item.valid?
        expect(@item.errors.full_messages).to include "Price is not included in the list"
      end

      it 'detailが空だと登録できない' do
        @item.detail = ""
        @item.valid?
        expect(@item.errors.full_messages).to include "Detail can't be blank"
      end

      it 'localityが空だと登録できない' do
        @item.locality = ""
        @item.valid?
        expect(@item.errors.full_messages).to include "Locality can't be blank"
      end

      it 'expiry_dateが空だと登録できない' do
        @item.expiry_date = ""
        @item.valid?
        expect(@item.errors.full_messages).to include "Expiry date can't be blank"
      end

      it 'category_idが空だと登録できない' do
        @item.category_id = ""
        @item.valid?
        expect(@item.errors.full_messages).to include "Category can't be blank"
      end

      it 'category_idが1を選択していると登録できない' do
        @item.category_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include "Category must be other than 1"
      end
    end
  end
end


