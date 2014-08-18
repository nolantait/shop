class AddAttachmentPhotoToProductImages < ActiveRecord::Migration
  def self.up
    change_table :product_images do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :product_images, :photo
  end
end
