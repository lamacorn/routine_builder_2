class Concern < ApplicationRecord
  mount_uploader :example_photo, ExamplePhotoUploader

  # Direct associations

  has_many   :product_concerns,
             :dependent => :destroy

  has_many   :customer_concerns,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
