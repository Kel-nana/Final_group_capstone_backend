# spec/models/doctor_spec.rb

require 'rails_helper'

RSpec.describe Appointment, type: :model do
  describe "Validations" do

    it "is not valid without a location" do
        appointment = Appointment.new(
        user_id: 1,
        doctor_id: 1,
        appointment_date: "2015-10-10",
        appointment_time: "12:00:00",
      )
      expect(appointment).to_not be_valid
    end

    it "is not valid without a appointment_time" do
        appointment = Appointment.new(
        user_id: 1,
        doctor_id: 1,
        appointment_date: "2015-10-10",
        location: "Nairobi",
      )
      expect(appointment).to_not be_valid
    end

    it "is not valid without a appointment_date" do
        appointment = Appointment.new(
        user_id: 1,
        doctor_id: 1,
        appointment_time: "12:00:00",
        location: "Nairobi",
      )
      expect(appointment).to_not be_valid
    end

    it "is not valid without a user_id" do
        appointment = Appointment.new(
        doctor_id: 1,
        appointment_time: "12:00:00",
        appointment_date: "2015-10-10",
        location: "Nairobi",
      )
      expect(appointment).to_not be_valid
    end

  end

  describe "Associations" do
    it "  belongs_to user" do
      expect(Appointment.reflect_on_association(:user).macro).to eq(:belongs_to)
    end

    it "belongs_to doctors" do
        expect(Appointment.reflect_on_association(:doctor).macro).to eq(:belongs_to)
      end
  end
end
