class CreateBasicInformations < ActiveRecord::Migration[6.0]
  def change
    create_table :basic_informations do |t|
      t.references  :user,        foreign_key: true
      t.string      :last_name,                 null: false, default: ""
      t.string      :first_name,                null: false, default: ""
      t.string      :last_name_kana,            null: false, default: ""
      t.string      :first_name_kana,           null: false, default: ""
      t.date        :birthday,                  null: false
      t.string      :postal_code,               null: false
      t.integer     :prefecture_id,             null: false
      t.string      :city,                      null: false
      t.string      :address,                   null: false
      t.string      :building
      t.integer     :blood_type_id,             null: false
      t.timestamps
    end
  end
end
