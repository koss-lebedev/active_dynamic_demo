class RenameProfileTable < ActiveRecord::Migration[5.0]
  def change
    rename_table :profiles, :contacts
  end
end
