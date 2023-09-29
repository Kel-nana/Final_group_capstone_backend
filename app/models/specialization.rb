class Specialization < ApplicationRecord
  has_and_belongs_to_many :doctors, join_table: :doctor_specializations
end
