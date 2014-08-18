class RemoveImageurlAttachmentFromProducts < ActiveRecord::Migration
  def change
    remove_attachment :products, :imageurl
  end
end
