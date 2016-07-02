class Song < ActiveRecord::Base
  belongs_to :answer, inverse_of: :song
  has_many :users, through: :playlists
end
