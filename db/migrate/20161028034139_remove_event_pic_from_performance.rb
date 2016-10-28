class RemoveEventPicFromPerformance < ActiveRecord::Migration[5.0]
  def change
    remove_column :performances, :event_pic, :binary
  end
end
