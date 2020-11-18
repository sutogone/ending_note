require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe "患者新規登録" do
    context "登録がうまくいく時" do
      it "必須項目が全て入力されていれば登録できること" do
        expect(@user).to be_valid
      end
    end
    
    context "登録がうまくいかない時" do
      it "medical_recordが空では登録できないこと" do
        @user.medical_record = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Medical record can't be blank", "Medical record is not a number")
      end
      it "emailが空では登録できないこと" do
        @user.email = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end
      it "email登録の際＠が抜けていたら登録できないこと" do
        @user.email = "samplesample.com"
        @user.valid?
        expect(@user.errors.full_messages).to include("Email is invalid")
      end
      it "passwordが空では登録できないこと" do
        @user.password = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end
      it "password_confirmationが空では登録ができないこと" do
        @user.password_confirmation = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
      it "emailが重複していては登録できないこと" do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include("Email has already been taken")
      end
      it "passwordが5文字以下の場合登録できないこと" do
        @user.password = "test1"
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password", "Password is too short (minimum is 6 characters)", "Password is invalid")
      end
      it "passwordを半角英字だけ入力すると登録できないこと" do
        @user.password = "111111"
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password", "Password is invalid")
      end
      it "passwordを半角数字だけ入力すると登録できないこと" do
        @user.password = "aaaaaa"
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password", "Password is invalid")
      end
      it "passwordとpassword_confirmationの値が一致しないとき登録ができないこと" do
        @user.password = ""
        @user.password_confirmation = "bbbb11"
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
      it "medical_recordが数字以外だった場合登録できないこと" do
        @user.medical_record = "aaaaaa"
        @user.valid?
        expect(@user.errors.full_messages).to include("Medical record is not a number")
      end
      it "medical_recordが重複していては登録できないこと" do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.medical_record = @user.medical_record
        another_user.valid?
        expect(another_user.errors.full_messages).to include("Medical record has already been taken")
      end
    end
    
  end
  
end
