class RenameTypeToKind < ActiveRecord::Migration[5.0]
  def change
    rename_column :supporters, :type, :kind 
  end
end
