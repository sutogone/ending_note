class CreateFunerals < ActiveRecord::Migration[6.0]
  def change
    create_table :funerals do |t|
      t.references  :user,                  foreign_key: true
      t.text :chief_mourner,                null: false
      t.string :funerals_details
      t.integer :religion_id,               null: false
      t.integer :funeral_scale_id,          null: false
      t.integer :funeral_expenses_id,       null: false
      t.integer :wake_place_id,             null: false
      t.integer :funeral_place_id,          null: false
      t.integer :burial_place_id,           null: false
      t.timestamps
    end
  end
end
