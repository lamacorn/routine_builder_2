class RoutineProduct < ApplicationRecord
  # Direct associations

  belongs_to :routine

  belongs_to :product

  # Indirect associations

  # Validations

end
