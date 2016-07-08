class Playlist < ActiveRecord::Base
  # has_one :game, inverse_of: :playlist
  belongs_to :song, inverse_of: :playlists
  belongs_to :user, inverse_of: :playlists
end
