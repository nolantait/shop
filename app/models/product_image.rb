class ProductImage < ActiveRecord::Base
  belongs_to :product

  has_attached_file :photo, styles: {
    small: "150x150>",
    medium: "300x300>",
    large: "600x600>"
  }
  validates_attachment_presence :photo
  validates_attachment_size :photo, less_than: 5.megabytes
end
