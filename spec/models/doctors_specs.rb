# spec/models/doctor_spec.rb

require 'rails_helper'

RSpec.describe Doctor, type: :model do
  describe 'Validations' do
    it 'is valid with valid attributes' do
      doctor = Doctor.new(
        doc_name: 'Dr. John Smith',
        education: 'MD',
        years_of_experience: 5
      )
      expect(doctor).to be_valid
    end

    it 'is not valid without a doc_name' do
      doctor = Doctor.new(
        education: 'MD',
        years_of_experience: 5
      )
      expect(doctor).to_not be_valid
    end

    it 'is not valid without education' do
      doctor = Doctor.new(
        doc_name: 'Dr. John Smith',
        years_of_experience: 5
      )
      expect(doctor).to_not be_valid
    end

    it 'is not valid with negative years_of_experience' do
      doctor = Doctor.new(
        doc_name: 'Dr. John Smith',
        education: 'MD',
        years_of_experience: -1
      )
      expect(doctor).to_not be_valid
    end
  end

  describe 'Associations' do
    it 'has many appointments' do
      expect(Doctor.reflect_on_association(:appointments).macro).to eq(:has_many)
    end

    it 'has and belongs to many specializations' do
      expect(Doctor.reflect_on_association(:specializations).macro).to eq(:has_and_belongs_to_many)
    end
  end
end
