require 'rails_helper'

RSpec.describe Asset, type: :model do
  before do
    @asset = FactoryBot.build(:asset)
  end

  describe "資産情報登録" do
    context "資産情報登録がうまくいく時" do
      it "登録必須事項が全て入力されている時" do
        expect(@asset).to be_valid
      end
    end

    context "知人・友人情報登録がうまくいかない時" do
      it "assets_category_idが空では登録できないこと" do
        @asset.assets_category_id = ""
        @asset.valid?
        expect(@asset.errors.full_messages).to include("Assets category can't be blank")
      end
      it "assets_category_idが1では登録できないこと" do
        @asset.assets_category_id = 1
        @asset.valid?
        expect(@asset.errors.full_messages).to include("Assets category must be other than 1")
      end
      it "assets_category_idが数字以外では登録できないこと" do
        @asset.assets_category_id = "test"
        @asset.valid?
        expect(@asset.errors.full_messages).to include("Assets category is not a number")
      end
    end
  end 
end
