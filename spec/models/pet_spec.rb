require 'rails_helper'

RSpec.describe Pet, type: :model do
  before do
    @pet = FactoryBot.build(:pet)
  end

  describe "ペット情報登録" do
    context "ペット情報登録がうまくいく時" do
      it "登録事項が全て入力されている時" do
        expect(@pet).to be_valid
      end
    end
      
    context "ペット情報登録がうまくいかない時" do
      it "pet_nameが空では登録できないこと" do
        @pet.pet_name = ""
        @pet.valid?
        expect(@pet.errors.full_messages).to include("Pet name can't be blank")
      end
      it "pet_breedが空では登録できないこと" do
        @pet.pet_breed = ""
        @pet.valid?
        expect(@pet.errors.full_messages).to include("Pet breed can't be blank")
      end
      it "pet_ageが空では登録できないこと" do
        @pet.pet_age = ""
        @pet.valid?
        expect(@pet.errors.full_messages).to include("Pet age can't be blank")
      end
      it "pet_ageの値が数字以外では登録できないこと" do
        @pet.pet_age = "aaa"
        @pet.valid?
        expect(@pet.errors.full_messages).to include("Pet age is not a number")
      end
    end
  end
end
