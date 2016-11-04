class AddAttachmentLogoToSupporters < ActiveRecord::Migration
  def self.up
    change_table :supporters do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :supporters, :logo
  end
end
