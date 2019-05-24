class Customer < ApplicationRecord
  # Direct associations

  has_many   :routines,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
