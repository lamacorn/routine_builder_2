require 'rails_helper'

RSpec.describe Usefrequency, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:routine_products) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
