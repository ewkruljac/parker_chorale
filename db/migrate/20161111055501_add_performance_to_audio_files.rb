class AddPerformanceToAudioFiles < ActiveRecord::Migration[5.0]
  def change
    add_reference :audio_files, :performance, foreign_key: true
  end
end
