require 'rails_helper'

RSpec.describe ProductConcern, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:concern) }

    it { should belong_to(:product) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
