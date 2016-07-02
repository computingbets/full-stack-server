class PlaylistSerializer < ActiveModel::Serializer
  attributes :id, :song_id, :user_id, :song
end
