class RoutineProduct < ApplicationRecord
  # Direct associations

  belongs_to :use_frequency,
             :class_name => "Usefrequency"

  belongs_to :routine

  belongs_to :product

  # Indirect associations

  # Validations

end
