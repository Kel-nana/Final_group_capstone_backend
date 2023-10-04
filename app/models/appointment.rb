class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :doctor

  validates :user_id, presence: true
  validates :doctor_id, presence: true
  validates :appointment_date, presence: true
  validates :appointment_time, presence: true
  validates :location, presence: true
end
