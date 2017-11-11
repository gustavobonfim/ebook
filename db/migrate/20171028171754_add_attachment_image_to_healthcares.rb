class AddAttachmentImageToHealthcares < ActiveRecord::Migration[5.1]
  def self.up
    change_table :healthcares do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :healthcares, :image
  end
end
