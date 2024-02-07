require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー登録' do
    context 'ユーザー登録できる場合' do
      it '必須項目を満たしていればユーザー登録できる' do

      end
    end

    context 'ユーザー登録できない場合' do
      it 'Nameが空では登録できない' do

      end
      it 'Emailが空では登録できない' do

      end
      it 'Passwordが空では登録できない' do

      end
      it 'Passwordが6文字未満だと登録できない' do

      end
      it 'PasswordとPassword confirmationが一致しないと登録できない' do

      end
      it 'Passwordが129文字以上だと登録できない' do

      end
      it 'すでに登録されているEmailアドレスは登録できない' do

      end
      it 'Emailには@を含まないと登録できない' do

      end
    end
  end
end
