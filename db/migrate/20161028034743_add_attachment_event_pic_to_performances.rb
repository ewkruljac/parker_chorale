class AddAttachmentEventPicToPerformances < ActiveRecord::Migration
  def self.up
    change_table :performances do |t|
      t.attachment :event_pic
    end
  end

  def self.down
    remove_attachment :performances, :event_pic
  end
end
