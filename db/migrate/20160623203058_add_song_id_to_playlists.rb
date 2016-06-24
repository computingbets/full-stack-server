class AddSongIdToPlaylists < ActiveRecord::Migration
  def change
    add_column :playlists, :songId, :integer
  end
end
