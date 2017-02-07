class RenameContactAttributes < ActiveRecord::Migration[5.0]
  def change
    rename_table :contact_attributes, :contact_attributes
  end
end
