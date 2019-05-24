class Customer < ApplicationRecord
  mount_uploader :profile_photo, ProfilePhotoUploader

  # Direct associations

  has_many   :customer_concerns,
             :dependent => :destroy

  has_many   :routines,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
