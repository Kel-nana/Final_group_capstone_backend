# db/seeds/specializations.rb
specializations = [
  { field_of_specialization: 'Cardiology' },
  { field_of_specialization: 'Dermatology' },
  { field_of_specialization: 'Neurology' },
  # Add more specializations as needed
]

Specialization.create!(specializations)

doctors = [
  {
    doc_name: 'Antoni Shkraba',
    education: 'MD',
    bio: 'Experienced doctor in Cardiology.',
    location: 'Hospital A',
    years_of_experience: 10,
    profile_pic: 'https://images.pexels.com/photos/5452291/pexels-photo-5452291.jpeg'
  },
  {
    doc_name: 'Lulu Brainstorm',
    education: 'MD',
    bio: 'Specialist in Dermatology.',
    location: 'Hospital B',
    years_of_experience: 8,
    profile_pic: 'https://images.pexels.com/photos/5407206/pexels-photo-5407206.jpeg'
  },
  {
    doc_name: 'Ruby Cedric',
    education: 'MD',
    bio: 'Specialist in Surgeon.',
    location: 'Hospital A',
    years_of_experience: 3,
    profile_pic: 'https://images.pexels.com/photos/4270088/pexels-photo-4270088.jpeg'
  },
  {
    doc_name: 'Lilian Yego',
    education: 'MD',
    bio: 'Specialist in Pediatrician.',
    location: 'Hospital B',
    years_of_experience: 5,
    profile_pic: 'https://images.pexels.com/photos/6749778/pexels-photo-6749778.jpeg'
  },
  {
    doc_name: 'Tima Miroshnichenko',
    education: 'MD',
    bio: 'Specialist in Neurologist.',
    location: 'Hospital A',
    years_of_experience: 13,
    profile_pic: 'https://images.pexels.com/photos/5452293/pexels-photo-5452293.jpeg'
  },
]

Doctor.create!(doctors)

# db/seeds/appointments.rb
appointments = [
  { user: User.first, doctor: Doctor.first, appointment_date: Date.today, appointment_time: Time.now, location: 'Hospital A' },
  { user: User.second, doctor: Doctor.second, appointment_date: Date.tomorrow, appointment_time: Time.now, location: 'Hospital B' },
  # Add more appointments as needed
]

Appointment.create!(appointments)
