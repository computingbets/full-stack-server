class Song < ActiveRecord::Base
  belongs_to :answer, inverse_of: :song
end
