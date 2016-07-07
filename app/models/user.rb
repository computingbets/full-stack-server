#
class User < ActiveRecord::Base
  include Authentication
  has_many :examples
  has_many :games
  has_many :songs, through: :playlists
  has_many :playlists
end
