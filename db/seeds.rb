# db/seeds/specializations.rb
specializations = [
  { field_of_specialization: 'Cardiology' },
  { field_of_specialization: 'Dermatology' },
  { field_of_specialization: 'Neurology' },
  # Add more specializations as needed
]

Specialization.create!(specializations)

# db/seeds/doctors.rb
doctors = [
  { doc_name: 'Dr. John Doe', education: 'MD', bio: 'Cardiologist', years_of_experience: 10, location: 'New York' },
  { doc_name: 'Dr. Jane Smith', education: 'MD', bio: 'Dermatologist', years_of_experience: 8, location: 'Chicago' },
  { doc_name: 'Dr. Michael Johnson', education: 'MD', bio: 'Neurologist', years_of_experience: 12, location: 'Los Angeles' },
  # Add more doctors as needed
]

Doctor.create!(doctors)

# db/seeds/users.rb
users = [
  { name: 'Alice', email: 'alice@example.com', password: 'password' },
  { name: 'Bob', email: 'bob@example.com', password: 'password' },
  { name: 'Charlie', email: 'charlie@example.com', password: 'password' },
  # Add more users as needed
]

User.create!(users)

# db/seeds/appointments.rb
appointments = [
  { user: User.first, doctor: Doctor.first, appointment_date: Date.today, appointment_time: Time.now, location: 'Hospital A' },
  { user: User.second, doctor: Doctor.second, appointment_date: Date.tomorrow, appointment_time: Time.now, location: 'Hospital B' },
  # Add more appointments as needed
]

Appointment.create!(appointments)
