class Category < ApplicationRecord
  # Direct associations

  has_many   :products,
             :dependent => :nullify

  # Indirect associations

  # Validations

def product_count
  return Product.where({:category_id => self.id}).count
end

end
