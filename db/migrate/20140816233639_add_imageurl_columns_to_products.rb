class AddImageurlColumnsToProducts < ActiveRecord::Migration
  def self.up
    add_attachment :products, :imageurl
  end

  def self.down
    remove_attachment :products, :imageurl
  end
end
