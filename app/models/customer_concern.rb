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
   a = Concern.where({ :concern_id => self.id })
  return a
  end

def customer_name
  #c = Customer.where({ :customer_id => self.id })
  
  return "customer name tbd"
end

def concerncounts
  a = CustomerConcern.where({ :concern_id => 1 }).count
  b = CustomerConcern.where({ :concern_id => 2 }).count
  c = CustomerConcern.where({ :concern_id => 3 }).count
  d = CustomerConcern.where({ :concern_id => 4 }).count
  e = CustomerConcern.where({ :concern_id => 5 }).count
  f = CustomerConcern.where({ :concern_id => 6 }).count
  return a.to_s + ", " + b.to_s + ", " + c.to_s  + ", " + d.to_s + ", " + e.to_s + ", " + f.to_s
end

end
