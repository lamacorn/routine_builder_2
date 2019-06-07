class Customer < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  # Direct associations

  has_many   :customer_concerns,
             :dependent => :destroy

  has_many   :routines,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
