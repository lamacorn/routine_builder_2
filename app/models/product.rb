class Product < ApplicationRecord
  mount_uploader :product_image, ProductImageUploader

  # Direct associations

  belongs_to :category,
             :counter_cache => true

  has_many   :product_concerns,
             :dependent => :destroy

  has_many   :routine_products,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
