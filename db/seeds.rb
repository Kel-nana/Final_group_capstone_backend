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
  {
    doc_name: 'Nancy Miroshnichenko',
    education: 'MD',
    bio: 'Specialist in General practitioner.',
    location: 'Hospital B',
    years_of_experience: 17,
    profile_pic: 'https://images.pexels.com/photos/12495583/pexels-photo-12495583.jpeg'
  },
  {
    doc_name: 'Loice Kare',
    education: 'MD',
    bio: 'Specialist in Neurologist.',
    location: 'Hospital A',
    years_of_experience: 11,
    profile_pic: 'https://images.pexels.com/photos/5215024/pexels-photo-5215024.jpeg'
  },
  {
    doc_name: 'Shaquille Kimolo',
    education: 'MD',
    bio: 'Specialist in Family medicine.',
    location: 'Hospital B',
    years_of_experience: 9,
    profile_pic: 'https://images.pexels.com/photos/5452293/pexels-photo-5452293.jpeg'
  },
  {
    doc_name: 'Edward Jenner',
    education: 'MD',
    bio: 'Specialist in Gastroenterologist.',
    location: 'Hospital A',
    years_of_experience: 14,
    profile_pic: 'https://images.pexels.com/photos/4033148/pexels-photo-4033148.jpeg'
  },
  {
    doc_name: 'Storm Akanji',
    education: 'MD',
    bio: 'Specialist in Oncologist.',
    location: 'Hospital B',
    years_of_experience: 12,
    profile_pic: 'https://images.pexels.com/photos/3902881/pexels-photo-3902881.jpeg'
  },
  {
    doc_name: 'Jane green',
    education: 'MD',
    bio: 'Specialist in Psychiatrist.',
    location: 'Hospital B',
    years_of_experience: 14,
    profile_pic: 'https://images.pexels.com/photos/5327580/pexels-photo-5327580.jpeg'
  },
  {
    doc_name: 'Sythia Robinson',
    education: 'MD',
    bio: 'Specialist in Cardiologist.',
    location: 'Hospital A',
    years_of_experience: 8,
    profile_pic: 'https://images.pexels.com/photos/5215017/pexels-photo-5215017.jpeg'
  },
  {
    doc_name: 'Faith Tutu ',
    education: 'MD',
    bio: 'Specialist in Radiologist.',
    location: 'Hospital B',
    years_of_experience: 6,
    profile_pic: 'https://images.pexels.com/photos/5215013/pexels-photo-5215013.jpeg'
  },
  {
    doc_name: 'Serique Kyalo',
    education: 'MD',
    bio: 'Specialist in Dermatologist.',
    location: 'Hospital A',
    years_of_experience: 16,
    profile_pic: 'https://images.pexels.com/photos/5452268/pexels-photo-5452268.jpeg'
  },
  # A
  # Add more doctors as needed
]

Doctor.create!(doctors)

# db/seeds/appointments.rb
appointments = [
  { user: User.first, doctor: Doctor.first, appointment_date: Date.today, appointment_time: Time.now, location: 'Hospital A' },
  { user: User.second, doctor: Doctor.second, appointment_date: Date.tomorrow, appointment_time: Time.now, location: 'Hospital B' },
  # Add more appointments as needed
]

Appointment.create!(appointments)
