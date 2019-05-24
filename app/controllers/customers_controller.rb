class CustomersController < ApplicationController
  def index
    @customers = Customer.all

    render("customer_templates/index.html.erb")
  end

  def show
    @customer_concern = CustomerConcern.new
    @routine = Routine.new
    @customer = Customer.find(params.fetch("id_to_display"))

    render("customer_templates/show.html.erb")
  end

  def new_form
    @customer = Customer.new

    render("customer_templates/new_form.html.erb")
  end

  def create_row
    @customer = Customer.new

    @customer.email = params.fetch("email")
    @customer.firstname = params.fetch("firstname")
    @customer.lastname = params.fetch("lastname")
    @customer.profile_photo = params.fetch("profile_photo") if params.key?("profile_photo")
    @customer.birthday = params.fetch("birthday")
    @customer.address_street = params.fetch("address_street")
    @customer.address_city = params.fetch("address_city")
    @customer.address_state = params.fetch("address_state")
    @customer.address_zipcode = params.fetch("address_zipcode")
    @customer.notes = params.fetch("notes")
    @customer.optin_email = params.fetch("optin_email")
    @customer.optin_texts = params.fetch("optin_texts")
    @customer.phone = params.fetch("phone")

    if @customer.valid?
      @customer.save

      redirect_back(:fallback_location => "/customers", :notice => "Customer created successfully.")
    else
      render("customer_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @customer = Customer.find(params.fetch("prefill_with_id"))

    render("customer_templates/edit_form.html.erb")
  end

  def update_row
    @customer = Customer.find(params.fetch("id_to_modify"))

    @customer.email = params.fetch("email")
    @customer.firstname = params.fetch("firstname")
    @customer.lastname = params.fetch("lastname")
    @customer.profile_photo = params.fetch("profile_photo") if params.key?("profile_photo")
    @customer.birthday = params.fetch("birthday")
    @customer.address_street = params.fetch("address_street")
    @customer.address_city = params.fetch("address_city")
    @customer.address_state = params.fetch("address_state")
    @customer.address_zipcode = params.fetch("address_zipcode")
    @customer.notes = params.fetch("notes")
    @customer.optin_email = params.fetch("optin_email")
    @customer.optin_texts = params.fetch("optin_texts")
    @customer.phone = params.fetch("phone")

    if @customer.valid?
      @customer.save

      redirect_to("/customers/#{@customer.id}", :notice => "Customer updated successfully.")
    else
      render("customer_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @customer = Customer.find(params.fetch("id_to_remove"))

    @customer.destroy

    redirect_to("/customers", :notice => "Customer deleted successfully.")
  end
end
