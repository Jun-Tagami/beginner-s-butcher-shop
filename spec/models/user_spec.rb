require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録できるとき' do
      it '全ての項目が正しく入力されていれば登録できる' do
        user = FactoryBot.build(:user)
        expect(user).to be_valid
      end

      it 'passwordとencrypted_passwordが6文字以上であれば登録できる' do
        @user.password = 'aaa456'
        @user.password_confirmation = 'aaa456'
        expect(@user).to be_valid
      end

      it 'パスワードは半角英数字混合で入力すれば登録できる' do
        @user.password = 'aaa111'
        @user.password_confirmation = 'aaa111'
        expect(@user).to be_valid
      end
    end

    context '新規登録できないとき' do
      it 'company_nameが空だと登録できない' do
        @user.company_name = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Company name can't be blank"
      end

      it 'emailが空だと登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Email can't be blank"
      end

      it '重複したメールアドレスが存在すると登録できない' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include 'Email has already been taken'
      end

      it 'メールアドレスに、@を含めなければ登録できない' do
        @user.email = 'aaabbb'
        @user.valid?
        expect(@user.errors.full_messages).to include 'Email is invalid'
      end

      it 'passwordが空だと登録できない' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Password can't be blank"
      end

      it 'passwordが存在してもpassword_confirmationが空では登録できない' do
        @user.password_confirmation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Password confirmation doesn't match Password"
      end

      it 'passwordは、5文字以下では登録できない' do
        @user.password = '12345'
        @user.password_confirmation = '12345'
        @user.valid?
        expect(@user.errors.full_messages).to include 'Password is too short (minimum is 6 characters)'
      end

      it 'passwordは半角英字のみの場合は登録できない' do
        @user.password = 'aaaaaa'
        @user.password_confirmation = 'aaaaaa'
        @user.valid?
        expect(@user.errors.full_messages).to include 'Password is invalid'
      end

      it 'passwordは半角数字のみの場合は登録できない' do
        @user.password = '111111'
        @user.password_confirmation = '111111'
        @user.valid?
        expect(@user.errors.full_messages).to include 'Password is invalid'
      end

      it 'passwordが全角の場合は登録できない' do
        @user.password = 'AAAAAA'
        @user.password_confirmation = 'AAAAAA'
        @user.valid?
        expect(@user.errors.full_messages).to include 'Password is invalid'
      end

      it 'company-phoneが空だと登録できない' do
        @user.company_tel = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Company tel can't be blank"
      end

      it 'company_telが11桁以内でないと登録できない' do
        @user.company_tel = 111111111111
        @user.valid?
        expect(@user.errors.full_messages).to include "Company tel is invalid"
      end

      it 'zip_codeが空だと登録できない' do
        @user.zip_code = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Zip code can't be blank"
      end

      it 'zip_codeはハイフンがないと登録できない' do
        @user.zip_code = '1234_567'
        @user.valid?
        expect(@user.errors.full_messages).to include 'Zip code is invalid'
      end

      it 'prefecture_idが空だと登録できない' do
        @user.prefecture_id = ""
        @user.valid?
        expect(@user.errors.full_messages).to include "Prefecture can't be blank"
      end

      it 'prefecture_idが1以外じゃないと登録できない' do
        @user.prefecture_id = 1
        @user.valid?
        expect(@user.errors.full_messages).to include "Prefecture must be other than 1"
      end
    end
  end
end
