class Game < ActiveRecord::Base
has_many :questions, inverse_of: :game
belongs_to :user, inverse_of: :games
end
