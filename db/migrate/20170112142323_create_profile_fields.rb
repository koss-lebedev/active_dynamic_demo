class CreateProfileFields < ActiveRecord::Migration[5.0]
  def change
    create_table :profile_fields do |t|
      t.string :name
      t.integer :datatype

      t.timestamps
    end
  end
end
