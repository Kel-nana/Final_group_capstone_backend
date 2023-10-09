# spec/models/doctor_spec.rb

require 'rails_helper'

RSpec.describe Specialization, type: :model do
  describe 'Associations' do
    it '  has_and_belongs_to_many doctors' do
      expect(Specialization.reflect_on_association(:doctors).macro).to eq(:has_and_belongs_to_many)
    end
  end
end
