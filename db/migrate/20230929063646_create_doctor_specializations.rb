class CreateDoctorSpecializations < ActiveRecord::Migration[7.0]
  def change
    create_table :doctor_specializations do |t|
      t.references :doctor, foreign_key: true
      t.references :specialization, foreign_key: true

      t.timestamps
    end
    add_index :doctor_specializations, [:doctor_id, :specialization_id], unique: true
  end
end
