require 'rails_helper'

RSpec.describe Room, type: :model do
  before do
    @room = FactoryBot.build(:room)
  end

  describe 'ルーム作成' do
    context '作成できる場合' do
      it 'nameカラムの値があればルーム作成できる' do
        expect(@room).to be_valid
      end
    end

    context '作成できない場合' do
      it 'nameカラムの値が空だとルーム作成できない' do
        @room.name = ''
        @room.valid?
        expect(@room.errors.full_messages).to include("Name can't be blank")
      end
    end
  end
end
