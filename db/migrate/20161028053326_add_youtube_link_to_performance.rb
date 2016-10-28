class AddYoutubeLinkToPerformance < ActiveRecord::Migration[5.0]
  def change
    add_column :performances, :youtube_link, :string
  end
end
