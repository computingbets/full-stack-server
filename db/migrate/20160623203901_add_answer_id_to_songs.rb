class AddAnswerIdToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :answerID, :integer
  end
end
