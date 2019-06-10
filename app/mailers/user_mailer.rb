class UserMailer < ApplicationMailer
    
    
 def routine_email
    
    @customer = params[:user]
    
    @url  = 'http://example.com/login'
    mail(to: @customer.email, subject: 'Thanks for signing up')
    
  end
  
#   def welcome_email
#     @routine = params[:routine]
#     @url  = 'http://example.com/login'
#     @customer = Customer.where({ :id => @routine.customer_id }).first
#     mail(to: @customer.email, subject: 'Welcome to My Awesome Site')
#   end
  
  
end
