class CreateAudioFiles < ActiveRecord::Migration[5.0]
  def change
    create_table :audio_files do |t|
      t.string :title
      t.string :part
      t.binary :audio

      t.timestamps
    end
  end
end
