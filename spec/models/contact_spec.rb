require 'rails_helper'

RSpec.describe Contact, type: :model do
  before do
    @contact = FactoryBot.build(:contact)
  end

  describe "知人・友人情報登録" do
    context "知人・友人情報登録がうまくいく時" do
      it "登録必須事項が全て入力されている時" do
        expect(@contact).to be_valid
      end
    end
    context "知人・友人情報登録がうまくいかない時" do
      it "acquaintance_nameが空では登録できないこと" do
        @contact.acquaintance_name = ""
        @contact.valid?
        expect(@contact.errors.full_messages).to include("Acquaintance name can't be blank")
      end
      it "acquaintance_contactが空では登録できないこと" do
        @contact.acquaintance_contact = ""
        @contact.valid?
        expect(@contact.errors.full_messages).to include("Acquaintance contact can't be blank")
      end
      it "acquaintance_contactが数字以外では登録できないこと" do
        @contact.acquaintance_contact = "aaaaa"
        @contact.valid?
        expect(@contact.errors.full_messages).to include("Acquaintance contact is not a number")
      end
    end
  end
end
