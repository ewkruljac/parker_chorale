class AddEventPicToPerformance < ActiveRecord::Migration[5.0]
  def change
    add_column :performances, :event_pic, :binary
  end
end
