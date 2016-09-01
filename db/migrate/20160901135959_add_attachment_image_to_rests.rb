class AddAttachmentImageToRests < ActiveRecord::Migration
  def self.up
    change_table :rests do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :rests, :image
  end
end
