class CreateContactAttributes < ActiveRecord::Migration[5.0]
  def change
    create_table :contact_attributes do |t|
      t.string :name
      t.integer :datatype

      t.timestamps
    end
  end
end
