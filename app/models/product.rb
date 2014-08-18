class Product < ActiveRecord::Base
  belongs_to :category
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "200x200>" }
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/



end
