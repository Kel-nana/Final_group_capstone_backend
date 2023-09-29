class Appointment < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :doctor, dependent: :destroy

  validates :user_id, presence: true
  validates :doctor_id, presence: true
  validates :appointment_date, presence: true
  validates :appointment_time, presence: true
  validates :location, presence: true
end
