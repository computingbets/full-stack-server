class AddQuestionIdToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :questionID, :integer
  end
end
