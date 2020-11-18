class CreateBasicInformations < ActiveRecord::Migration[6.0]
  def change
    create_table :basic_informations do |t|

      t.timestamps
    end
  end
end
