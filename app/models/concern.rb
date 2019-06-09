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

def customer_count
  a = CustomerConcern.where(:concern_id => self.id)

  return a.count
end

# def top_concerns
#   nums = CustomerConcern.where({ :concern_id => 1 }).count

# <%=   a = CustomerConcern.where({ :concern_id => 1 }).count %>
# <%=   b = CustomerConcern.where({ :concern_id => 2 }).count %>
# <%=   c = CustomerConcern.where({ :concern_id => 3 }).count %>
# <%=   d = CustomerConcern.where({ :concern_id => 4 }).count %>
# <%=   e = CustomerConcern.where({ :concern_id => 5 }).count %>
# <%=   f = CustomerConcern.where({ :concern_id => 6 }).count %>

# Concern.sort_by(:customer_concerns.count)

# end


end
