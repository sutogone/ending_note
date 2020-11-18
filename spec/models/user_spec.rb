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
        
      end
      it "emailが空では登録できないこと" do
        
      end
      it "email登録の際＠が抜けていたら登録できないこと" do
        
      end
      it "passwordが空では登録できないこと" do
        
      end
      it "password_confirmationが空では登録ができないこと" do
        
      end
      it "emailが重複していては登録できないこと" do
        
      end
      it "passwordが5文字以下の場合登録できないこと" do
        
      end
      it "passwordを半角英字だけ入力すると登録できないこと" do
        
      end
      it "passwordを半角数字だけ入力すると登録できないこと" do
        
      end
      it "passwordとpassword_confirmationの値が一致しないとき登録ができないこと" do
        
      end
      it "medical_recordが数字以外だった場合登録できないこと" do
        
      end
    end
    
  end
  
end
