require 'rails_helper'

RSpec.describe Funeral, type: :model do
  before do
    @funeral = FactoryBot.build(:funeral)
  end

  describe "葬儀・埋葬情報登録" do
    context "葬儀・埋葬情報登録がうまくいく時" do
      it "必須事項が全て入力されている時" do
        expect(@funeral).to be_valid
      end
    end

    context "葬儀・埋葬情報登録がうまくいかない時" do
      it "chief_mournerが空では登録できないこと" do
        @funeral.chief_mourner = ""
        @funeral.valid?
        expect(@funeral.errors.full_messages).to include("Chief mourner can't be blank")
      end
      it "religion_idが空では登録できないこと" do
        @funeral.religion_id = ""
        @funeral.valid?
        expect(@funeral.errors.full_messages).to include("Religion can't be blank", "Religion is not a number")
      end
      it "religion_idが文字では登録できないこと" do
        @funeral.religion_id = "aaa"
        @funeral.valid?
        expect(@funeral.errors.full_messages).to include("Religion is not a number")
      end
      it "funeral_scale_idが空では登録できないこと" do
        @funeral.funeral_scale_id = ""
        @funeral.valid?
        expect(@funeral.errors.full_messages).to include("Funeral scale can't be blank", "Funeral scale is not a number")
      end
      it "funeral_scale_idが文字では登録できないこと" do
        @funeral.funeral_scale_id = "aaa"
        @funeral.valid?
        expect(@funeral.errors.full_messages).to include("Funeral scale is not a number")
      end
      it "funeral_expenses_idrが空では登録できないこと" do
        @funeral.funeral_expenses_id = ""
        @funeral.valid?
        expect(@funeral.errors.full_messages).to include("Funeral expenses can't be blank", "Funeral expenses is not a number")
      end
      it "funeral_expenses_idrが文字では登録できないこと" do
        @funeral.funeral_expenses_id = "aaa"
        @funeral.valid?
        expect(@funeral.errors.full_messages).to include("Funeral expenses is not a number")
      end
      it "wake_place_idが空では登録できないこと" do
        @funeral.wake_place_id = ""
        @funeral.valid?
        expect(@funeral.errors.full_messages).to include("Wake place can't be blank", "Wake place is not a number")
      end
      it "wake_place_idが文字では登録できないこと" do
        @funeral.wake_place_id = "aaa"
        @funeral.valid?
        expect(@funeral.errors.full_messages).to include("Wake place is not a number")
      end
      it "funeral_place_idが空では登録できないこと" do
        @funeral.funeral_place_id = ""
        @funeral.valid?
        expect(@funeral.errors.full_messages).to include("Funeral place can't be blank", "Funeral place is not a number")
      end
      it "funeral_place_idが文字では登録できないこと" do
        @funeral.funeral_place_id = "aaa"
        @funeral.valid?
        expect(@funeral.errors.full_messages).to include("Funeral place is not a number")
      end
      it "burial_place_idが空では登録できないこと" do
        @funeral.burial_place_id = ""
        @funeral.valid?
        expect(@funeral.errors.full_messages).to include("Burial place can't be blank", "Burial place is not a number")
      end
      it "burial_place_idが文字では登録できないこと" do
        @funeral.burial_place_id = "aaa"
        @funeral.valid?
        expect(@funeral.errors.full_messages).to include("Burial place is not a number")
      end
    end
  end
end
