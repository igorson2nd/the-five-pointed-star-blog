class RenameReactionColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :reactions, :reaction, :reaction_type
  end
end
