require 'rails_helper'

RSpec.describe Message, type: :model do
  before do
    @message = FactoryBot.create(:message)
    sleep 0.1
  end

  describe 'メッセージ投稿' do
    context 'メッセージ投稿ができる場合' do
      it 'contentとimageが存在していれば保存できる' do
        expect(@message).to be_valid
      end

      it 'contentのみでも保存できる' do
        @message.image = nil
        expect(@message).to be_valid
      end

      it 'image添付のみでも保存できる' do
        @message.content = nil
        expect(@message).to be_valid
      end
    end

    context 'メッセージ投稿ができない場合' do
      it 'contentとimageがいずれも空だと保存できない' do
        @message.content = ''
        @message.image = nil
        @message.valid?
        expect(@message.errors.full_messages).to include("Content can't be blank")
      end

      it 'user_idが空だと保存できない' do
        @message.user_id = ""
        @message.valid?
        expect(@message.errors.full_messages).to include("User must exist")
      end

      it 'room_idが空だと保存できない' do
        @message.room_id = ""
        @message.valid?
        expect(@message.errors.full_messages).to include("Room must exist")
      end
    end
  end
end