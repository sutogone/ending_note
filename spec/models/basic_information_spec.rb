require 'rails_helper'

RSpec.describe BasicInformation, type: :model do
  before do
    @basic = FactoryBot.build(:basic_information)
  end

  describe "ユーザー基本情報登録" do
    context "基本情報登録がうまくいく時" do
      it "必須事項が全て入力されている時" do
        expect(@basic).to be_valid
      end
    end

    context "基本情報登録がうまくいかない時" do
      it "last_nameが空では登録できないこと" do
        @basic.last_name = ""
        @basic.valid?
        expect(@basic.errors.full_messages).to include("Last name can't be blank", "Last name is invalid")
      end
      it "first_nameが空では登録できないこと" do
        @basic.first_name = ""
        @basic.valid?
        expect(@basic.errors.full_messages).to include("First name can't be blank", "First name is invalid")
      end
      it "last_name_kanaが空では登録できないこと" do
        @basic.last_name_kana = ""
        @basic.valid?
        expect(@basic.errors.full_messages).to include("Last name kana can't be blank", "Last name kana is invalid")
      end
      it "first_name_kana空では登録できないこと" do
        @basic.first_name_kana = ""
        @basic.valid?
        expect(@basic.errors.full_messages).to include("First name kana can't be blank", "First name kana is invalid")
      end
      it "birthdayが空では登録できないこと" do
        @basic.birthday = ""
        @basic.valid?
        expect(@basic.errors.full_messages).to include("Birthday can't be blank")
      end
      it "postal_codeが空では登録できないこと" do
        @basic.postal_code = ""
        @basic.valid?
        expect(@basic.errors.full_messages).to include("Postal code can't be blank", "Postal code is invalid")
      end
      it "prefecture_idが空では登録できないこと" do
        @basic.prefecture_id = ""
        @basic.valid?
        expect(@basic.errors.full_messages).to include("Prefecture can't be blank", "Prefecture is not a number")
      end
      it "cityが空では登録できないこと" do
        @basic.city = ""
        @basic.valid?
        expect(@basic.errors.full_messages).to include("City can't be blank")
      end
      it "addressが空では登録できないこと" do
        @basic.address = ""
        @basic.valid?
        expect(@basic.errors.full_messages).to include("Address can't be blank")
      end
      it "blood_type_idが空では登録できないこと" do
        @basic.blood_type_id = ""
        @basic.valid?
        expect(@basic.errors.full_messages).to include("Blood type can't be blank", "Blood type is not a number")
      end
      it "last_nameを英字で入力すると登録できないこと" do
        @basic.last_name = "tesuto"
        @basic.valid?
        expect(@basic.errors.full_messages).to include("Last name is invalid")
      end
      it "first_nameを英字で入力すると登録できないこと" do
        @basic.first_name = "tesuto"
        @basic.valid?
        expect(@basic.errors.full_messages).to include("First name is invalid")
      end
      it "last_nameを数字で入力すると登録できないこと" do
        @basic.last_name = "123"
        @basic.valid?
        expect(@basic.errors.full_messages).to include("Last name is invalid")
      end
      it "first_nameを数字で入力すると登録できないこと" do
        @basic.first_name = "123"
        @basic.valid?
        expect(@basic.errors.full_messages).to include("First name is invalid")
      end
      it "last_name_kanaを英字で入力すると登録できないこと" do
        @basic.last_name_kana = "test"
        @basic.valid?
        expect(@basic.errors.full_messages).to include("Last name kana is invalid")
      end
      it "first_name_kanaを英字で入力すると登録できないこと" do
        @basic.first_name_kana = "tarou"
        @basic.valid?
        expect(@basic.errors.full_messages).to include("First name kana is invalid")
      end
      it "last_name_kanaを数字で入力すると登録できないこと" do
        @basic.last_name_kana = "123"
        @basic.valid?
        expect(@basic.errors.full_messages).to include("Last name kana is invalid")
      end
      it "first_name_kanaを数字で入力すると登録できないこと" do
        @basic.first_name_kana = "123"
        @basic.valid?
        expect(@basic.errors.full_messages).to include("First name kana is invalid")
      end
      it "last_name_kanaを半角カナで入力すると登録できないこと" do
        @basic.last_name_kana = "ﾃｽﾄ"
        @basic.valid?
        expect(@basic.errors.full_messages).to include("Last name kana is invalid")
      end
      it "first_name_kanaを半角カナで入力すると登録できないこと" do
        @basic.first_name_kana = "ﾀﾛｳ"
        @basic.valid?
        expect(@basic.errors.full_messages).to include("First name kana is invalid")
      end
      it "postal_codeにハイフンがないと登録ができないこと" do
        @basic.postal_code = 4441111
        @basic.valid?
        expect(@basic.errors.full_messages).to include("Postal code is invalid")
      end
      it "prefecture_idが1の場合登録ができないこと" do
        @basic.prefecture_id = 1
        @basic.valid?
        expect(@basic.errors.full_messages).to include("Prefecture must be other than 1")
      end
      
    end
    
  end
end
