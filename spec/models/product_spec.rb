require 'rails_helper'

RSpec.describe Product, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:category) }

    it { should have_many(:product_concerns) }

    it { should have_many(:routine_products) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
