
# spec/models/doctor_spec.rb

require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Validations" do

    it "is not valid without a location" do
        user = User.new(
        name: "Lulu Brainstorm",

      )
      expect(user).to_not be_valid
    end
  end

  describe "Associations" do
    it "  has_many appointments" do
      expect(User.reflect_on_association(:appointments).macro).to eq(:has_many)
    end
  end
end
