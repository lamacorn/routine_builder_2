class Concern < ApplicationRecord
  # Direct associations

  has_many   :product_concerns,
             :dependent => :destroy

  has_many   :customer_concerns,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
