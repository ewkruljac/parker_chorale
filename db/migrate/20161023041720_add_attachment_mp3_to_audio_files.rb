class AddAttachmentMp3ToAudioFiles < ActiveRecord::Migration
  def self.up
    change_table :audio_files do |t|
      t.attachment :mp3
    end
  end

  def self.down
    remove_attachment :audio_files, :mp3
  end
end
