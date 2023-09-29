class Doctor < ApplicationRecord
    has_many :appointments
    has_and_belongs_to_many :specializations, join_table: :doctor_specializations
  end
  