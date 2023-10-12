class Doctor < ApplicationRecord
  has_many :appointments, dependent: :destroy
  has_and_belongs_to_many :specializations, join_table: :doctor_specializations

  validates :doc_name, presence: true
  validates :education, presence: true
  validates :years_of_experience, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
