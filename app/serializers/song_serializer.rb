class SongSerializer < ActiveModel::Serializer
  attributes :title, :artist, :id, :links
end
