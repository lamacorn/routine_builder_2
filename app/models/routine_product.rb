class RoutineProduct < ApplicationRecord
#routine_id, 
#product_id, 
#use_frequency_id
#note

  # Direct associations

  belongs_to :use_frequency,
             :class_name => "Usefrequency"

  belongs_to :routine

  belongs_to :product

  # Indirect associations

  # Validations

def productname
  return Product.where({ :id => self.product_id }).pluck("name").first
end

def frequency
  return Usefrequency.where({ :id => self.use_frequency_id }).pluck("description").first
end

def customerid
  a = Routine.where({ :id => self.routine_id }).first
  b = Customer.where({ :id => a.customer_id }).pluck("id").first
  return b
end

def customername
  a = Routine.where({ :id => self.routine_id }).first
  b = Customer.where({ :id => a.customer_id }).pluck("firstname").first
  c = Customer.where({ :id => a.customer_id }).pluck("lastname").first
  return b + " " + c
end



end