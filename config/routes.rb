Rails.application.routes.draw do
  # Routes for the Concern resource:

  # CREATE
  get("/concerns/new", { :controller => "concerns", :action => "new_form" })
  post("/create_concern", { :controller => "concerns", :action => "create_row" })

  # READ
  get("/concerns", { :controller => "concerns", :action => "index" })
  get("/concerns/:id_to_display", { :controller => "concerns", :action => "show" })

  # UPDATE
  get("/concerns/:prefill_with_id/edit", { :controller => "concerns", :action => "edit_form" })
  post("/update_concern/:id_to_modify", { :controller => "concerns", :action => "update_row" })

  # DELETE
  get("/delete_concern/:id_to_remove", { :controller => "concerns", :action => "destroy_row" })

  #------------------------------

  # Routes for the Usefrequency resource:

  # CREATE
  get("/usefrequencies/new", { :controller => "usefrequencies", :action => "new_form" })
  post("/create_usefrequency", { :controller => "usefrequencies", :action => "create_row" })

  # READ
  get("/usefrequencies", { :controller => "usefrequencies", :action => "index" })
  get("/usefrequencies/:id_to_display", { :controller => "usefrequencies", :action => "show" })

  # UPDATE
  get("/usefrequencies/:prefill_with_id/edit", { :controller => "usefrequencies", :action => "edit_form" })
  post("/update_usefrequency/:id_to_modify", { :controller => "usefrequencies", :action => "update_row" })

  # DELETE
  get("/delete_usefrequency/:id_to_remove", { :controller => "usefrequencies", :action => "destroy_row" })

  #------------------------------

  # Routes for the Routine product resource:

  # CREATE
  get("/routine_products/new", { :controller => "routine_products", :action => "new_form" })
  post("/create_routine_product", { :controller => "routine_products", :action => "create_row" })

  # READ
  get("/routine_products", { :controller => "routine_products", :action => "index" })
  get("/routine_products/:id_to_display", { :controller => "routine_products", :action => "show" })

  # UPDATE
  get("/routine_products/:prefill_with_id/edit", { :controller => "routine_products", :action => "edit_form" })
  post("/update_routine_product/:id_to_modify", { :controller => "routine_products", :action => "update_row" })

  # DELETE
  get("/delete_routine_product/:id_to_remove", { :controller => "routine_products", :action => "destroy_row" })

  #------------------------------

  # Routes for the Routine resource:

  # CREATE
  get("/routines/new", { :controller => "routines", :action => "new_form" })
  post("/create_routine", { :controller => "routines", :action => "create_row" })

  # READ
  get("/routines", { :controller => "routines", :action => "index" })
  get("/routines/:id_to_display", { :controller => "routines", :action => "show" })

  # UPDATE
  get("/routines/:prefill_with_id/edit", { :controller => "routines", :action => "edit_form" })
  post("/update_routine/:id_to_modify", { :controller => "routines", :action => "update_row" })

  # DELETE
  get("/delete_routine/:id_to_remove", { :controller => "routines", :action => "destroy_row" })

  #------------------------------

  # Routes for the Category resource:

  # CREATE
  get("/categories/new", { :controller => "categories", :action => "new_form" })
  post("/create_category", { :controller => "categories", :action => "create_row" })

  # READ
  get("/categories", { :controller => "categories", :action => "index" })
  get("/categories/:id_to_display", { :controller => "categories", :action => "show" })

  # UPDATE
  get("/categories/:prefill_with_id/edit", { :controller => "categories", :action => "edit_form" })
  post("/update_category/:id_to_modify", { :controller => "categories", :action => "update_row" })

  # DELETE
  get("/delete_category/:id_to_remove", { :controller => "categories", :action => "destroy_row" })

  #------------------------------

  # Routes for the Product resource:

  # CREATE
  get("/products/new", { :controller => "products", :action => "new_form" })
  post("/create_product", { :controller => "products", :action => "create_row" })

  # READ
  get("/products", { :controller => "products", :action => "index" })
  get("/products/:id_to_display", { :controller => "products", :action => "show" })

  # UPDATE
  get("/products/:prefill_with_id/edit", { :controller => "products", :action => "edit_form" })
  post("/update_product/:id_to_modify", { :controller => "products", :action => "update_row" })

  # DELETE
  get("/delete_product/:id_to_remove", { :controller => "products", :action => "destroy_row" })

  #------------------------------

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
