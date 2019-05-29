#id
#firstname
#lastname
#email
#phone
#notes
#profile_photo
#birthday
#address_street
#address_city
#address_state
#address_zip
#optin_emai
#optin_texts



require 'open-uri'
class Customer < ApplicationRecord
  before_validation :geocode_address_street

  def geocode_address_street
    if self.address_street.present?
      url = "http://maps.googleapis.com/maps/api/geocode/json?address=#{URI.encode(self.address_street)}"

      raw_data = open(url).read

      parsed_data = JSON.parse(raw_data)

      if parsed_data["results"].present?
        self.address_street_latitude = parsed_data["results"][0]["geometry"]["location"]["lat"]

        self.address_street_longitude = parsed_data["results"][0]["geometry"]["location"]["lng"]

        self.address_street_formatted_address = parsed_data["results"][0]["formatted_address"]
      end
    end
  end
  mount_uploader :profile_photo, ProfilePhotoUploader

  # Direct associations

  has_many   :customer_concerns,
             :dependent => :destroy

  has_many   :routines,
             :dependent => :destroy

  # Indirect associations

  # Validations

def age
    require 'date'
    ageInDays = Date.today - self.birthday
    ageInYears = ageInDays/365
    return ageInYears.to_i
end

def optInEmail_check
  if self.optin_email
    return "Yes"
  else " "
  end
end

def optInText_check
    if self.optin_texts
    return "Yes"
  else " "
  end
end



end
