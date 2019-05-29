class Routine < ApplicationRecord
  # Direct associations

  has_many   :routine_products,
             :dependent => :destroy

  belongs_to :customer

  # Indirect associations

  # Validations
  
def activereadable
  if self.active
        return "Active" 
        else return "Not active"
  end
end


end
