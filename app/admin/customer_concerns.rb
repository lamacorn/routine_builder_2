ActiveAdmin.register CustomerConcern do

 permit_params :concern_id, :customer_id
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

def concern_name
    return Concern.where({ self.concern_id => Concern.id }).first.pluck(:name)
end


def customer_name
    return Customer.where({ :customer_id => self.id }).first.pluck(:name)
end


end
