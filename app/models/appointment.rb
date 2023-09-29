class Appointment < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :doctor, dependent: :destroy
end
