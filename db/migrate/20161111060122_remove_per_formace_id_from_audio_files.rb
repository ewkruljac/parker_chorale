class RemovePerFormaceIdFromAudioFiles < ActiveRecord::Migration[5.0]
  def change
    remove_column :audio_files, :performace_id, :integer
  end
end
