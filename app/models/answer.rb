class Answer < ActiveRecord::Base
  belongs_to :question, inverse_of: :answers
  has_one :song, inverse_of: :answer
end
