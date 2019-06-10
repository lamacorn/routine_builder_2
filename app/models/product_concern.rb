class ProductConcern < ApplicationRecord
  # Direct associations

  belongs_to :concern

  belongs_to :product

  # Indirect associations

  # Validations
  
  
  def product_name
    return Product.where({ :id => self.product_id }).pluck("name").first
  end
  
  def concern_name
    return Concern.where({ :id => self.concern_id }).pluck("name").first
  end

end
