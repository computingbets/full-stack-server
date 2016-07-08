#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :songs, :playlists
end
