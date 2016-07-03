class AddLinksToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :links, :string
  end
end
