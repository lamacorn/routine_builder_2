class Concern < ApplicationRecord
  mount_uploader :example_photo, ExamplePhotoUploader

#id             :id for the record
#name           :name of the concern (string)
#description    :text to describe this concern
#example_photo  :uploaded photo


  # Direct associations

  has_many   :product_concerns,
             :dependent => :destroy

  has_many   :customer_concerns,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
