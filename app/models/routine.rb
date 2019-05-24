class Routine < ApplicationRecord
  # Direct associations

  has_many   :routine_products,
             :dependent => :destroy

  belongs_to :customer

  # Indirect associations

  # Validations

end
