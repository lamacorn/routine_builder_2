class ProductConcern < ApplicationRecord
  # Direct associations

  belongs_to :concern

  belongs_to :product

  # Indirect associations

  # Validations

end
