class AddAttachmentImageToMovies < ActiveRecord::Migration[5.1]
  def self.up
    change_table :movies do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :movies, :image
  end
end
#make sure you add [5.1] to it to specify its rails version