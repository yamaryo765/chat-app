require 'rails_helper'

RSpec.describe Room, type: :model do
  describe '#create' do
    before do
      @room = FactoryBot.build(:room)
    end

    it "nameの値が存在すれば登録できること" do
      expect(@romm).to be_vaild
    end

    it "nameが空では登録できないこと" do
      @room.name = nil
      @romm.valid?
      expect(@room.errors.full_messages).toinclude("Name cant'be blank")
    end
  end
end