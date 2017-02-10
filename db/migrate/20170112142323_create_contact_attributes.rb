class CreateContactAttributes < ActiveRecord::Migration[5.0]
  def change
    create_table :contact_attributes do |t|
      t.string :name
      t.integer :datatype
      t.boolean :required, null: false, default: false

      t.timestamps
    end
  end
end
