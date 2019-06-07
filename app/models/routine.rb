class Routine < ApplicationRecord
  # Direct associations

  belongs_to :createdby,
             :class_name => "Coach"

  has_many   :routine_products,
             :dependent => :destroy

  belongs_to :customer

  # Indirect associations

  # Validations

end
