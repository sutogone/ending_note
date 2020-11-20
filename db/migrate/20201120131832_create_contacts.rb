class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.references  :user,                foreign_key: true
      t.string :acquaintance_name,        null: false, default: ""
      t.integer :acquaintance_contact,    null: false
      t.text :acquaintance_details
      t.timestamps
    end
  end
end
