ActiveAdmin.register Customer do

 permit_params :email, :firstname, :lastname, :profile_photo, :birthday, :address_street, :address_city, :address_state, :address_zipcode, :notes, :optin_email, :optin_texts, :phone
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



end
