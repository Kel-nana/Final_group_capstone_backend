class RemoveDoctorIdFromSpecializations < ActiveRecord::Migration[7.0]
  def change
    remove_column :specializations, :doctor_id, :bigint
  end
end
