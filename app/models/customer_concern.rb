class CustomerConcern < ApplicationRecord

#id
#customer_id
#concern_id
  
  
  # Direct associations

  belongs_to :concern

  belongs_to :customer

  # Indirect associations

  # Validations
  
  def concern_name
   a = Concern.where({ :concern_id => :id })
  return a
  end

def customer_name
  #c = Customer.where({ :customer_id => self.id })
  
  return "customer name tbd"
end

end
