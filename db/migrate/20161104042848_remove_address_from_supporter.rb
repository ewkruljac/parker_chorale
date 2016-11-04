class RemoveAddressFromSupporter < ActiveRecord::Migration[5.0]
  def change
    remove_column :supporters, :address
  end
end
