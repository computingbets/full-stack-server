class Playlist < ActiveRecord::Base
  has_one :game, inverse_of: :playlist 
end
