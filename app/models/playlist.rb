class Playlist < ActiveRecord::Base
  has_one :game, inverse_of: :playlist
  belongs_to :song
  belongs_to :user
end
