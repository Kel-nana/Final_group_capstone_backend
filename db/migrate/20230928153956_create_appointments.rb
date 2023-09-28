class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :doctor, null: false, foreign_key: true
      t.date :appointment_date
      t.time :appointment_time
      t.string :location

      t.timestamps
    end
  end
end
