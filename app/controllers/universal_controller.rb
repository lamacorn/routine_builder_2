class UniversalController < ApplicationController

  def dashboard
    render("layouts/dashboard.html.erb")
  end


def routine_email
    @routine = Routine.where({ :id => params.fetch("routine_id") }).first
    @customer = Customer.where({ :id => @routine.customer_id }).first
    UserMailer.with(user: @customer).routine_email.deliver_now
  
  render("layouts/dashboard.html.erb")
  
  end



end