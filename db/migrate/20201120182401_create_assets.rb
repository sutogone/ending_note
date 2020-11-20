class CreateAssets < ActiveRecord::Migration[6.0]
  def change
    create_table :assets do |t|
      t.references  :user,            foreign_key: true
      t.integer :assets_category_id,  null: false
      t.string :financial,            null: false
      t.text :assets_details
      t.timestamps
    end
  end
end
