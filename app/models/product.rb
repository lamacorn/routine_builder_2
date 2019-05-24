class Product < ApplicationRecord
  # Direct associations

  has_many   :product_concerns,
             :dependent => :destroy

  has_many   :routine_products,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
