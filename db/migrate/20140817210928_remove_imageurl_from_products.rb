class RemoveImageurlFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :imageurl
  end
end
