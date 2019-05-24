class Usefrequency < ApplicationRecord
  # Direct associations

  has_many   :routine_products,
             :foreign_key => "use_frequency_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
