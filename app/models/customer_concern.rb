class CustomerConcern < ApplicationRecord
  # Direct associations

  belongs_to :concern

  belongs_to :customer

  # Indirect associations

  # Validations

end
