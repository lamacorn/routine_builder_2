class Concern < ApplicationRecord
  # Direct associations

  has_many   :customer_concerns,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
