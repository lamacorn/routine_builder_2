require 'rails_helper'

RSpec.describe Coach, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:routines) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
