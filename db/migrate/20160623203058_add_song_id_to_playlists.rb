class AddSongIdToPlaylists < ActiveRecord::Migration
  def change
    add_reference :playlists, :user, index: true, foreign_key: true
    add_reference :playlists, :song, index: true, foreign_key: true
  end
end
