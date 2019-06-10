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
  #validates(:column_name, { :presence => true, :uniqueness => true })  #makes sure there's a value in this column before you can save.
  #validates(:column_name, { :uniqueness => true })  #makes sure there's a uique value in this column before you can save.

  validates(:firstname, { :presence => true })
  validates(:lastname, { :presence => true })
  validates(:email, { :presence => true, :uniqueness => true })
  # validates(:phone, { :presence => true })
  validates(:address_city, { :presence => true })
  validates(:address_street, { :presence => true })
  validates(:address_state, { :presence => true })
  validates(:address_zipcode, { :presence => true })
  
#  customer.errors.full_messages -->  the errors.fullmessages.each will give your user a list of all of the things are wrong if they are trying to save

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

def recent_customers
  return Customer.all.order({ :updated_at => :desc }).last(3)
end

def fullname
  return self.firstname + " " + self.lastname
end

def routines_count
  return Routine.where({ :customer_id => self.id }).count
end

def active_routines_count
  return  Routine.where({ :customer_id => self.id, :active => true }).count
end

end
