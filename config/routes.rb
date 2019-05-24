Rails.application.routes.draw do
  # Routes for the Customer resource:

  # CREATE
  get("/customers/new", { :controller => "customers", :action => "new_form" })
  post("/create_customer", { :controller => "customers", :action => "create_row" })

  # READ
  get("/customers", { :controller => "customers", :action => "index" })
  get("/customers/:id_to_display", { :controller => "customers", :action => "show" })

  # UPDATE
  get("/customers/:prefill_with_id/edit", { :controller => "customers", :action => "edit_form" })
  post("/update_customer/:id_to_modify", { :controller => "customers", :action => "update_row" })

  # DELETE
  get("/delete_customer/:id_to_remove", { :controller => "customers", :action => "destroy_row" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
