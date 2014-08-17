class Product < ActiveRecord::Base
  belongs_to :category
  has_one :product_image, dependent: :destroy
  accepts_nested_attributes_for :product_image, :allow_destroy => true



end
