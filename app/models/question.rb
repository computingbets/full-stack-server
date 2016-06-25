class Question < ActiveRecord::Base
  belongs_to :game, inverse_of: :questions
  has_many :answers, inverse_of: :question
end
