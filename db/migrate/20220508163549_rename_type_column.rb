class RenameTypeColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :reactions, :type, :reaction
  end
end
