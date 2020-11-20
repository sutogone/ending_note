class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.references  :user,            foreign_key: true
      t.string      :pet_name,        null: false, default: ""
      t.string      :pet_breed,       null: false, default: ""
      t.integer     :pet_age,         null: false
      t.text        :pet_details,     null: false
      t.timestamps
    end
  end
end
