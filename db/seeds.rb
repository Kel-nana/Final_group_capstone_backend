# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Create doctors
doctors = [
    {
      doc_name: 'Antoni Shkraba',
      education: 'MD',
      bio: 'Experienced doctor in Cardiology.',
      years_of_experience: 10,
      profile_pic: 'https://images.pexels.com/photos/5452291/pexels-photo-5452291.jpeg'
    },
    {
      doc_name: 'Lulu Brainstorm',
      education: 'MD',
      bio: 'Specialist in Dermatology.',
      years_of_experience: 8,
      profile_pic: 'https://images.pexels.com/photos/5407206/pexels-photo-5407206.jpeg'
    },
    {
      doc_name: 'Ruby Cedric',
      education: 'MD',
      bio: 'Specialist in Surgeon.',
      years_of_experience: 3,
      profile_pic: 'https://images.pexels.com/photos/4270088/pexels-photo-4270088.jpeg'
    },
    {
      doc_name: 'Lilian Yego',
      education: 'MD',
      bio: 'Specialist in Pediatrician.',
      years_of_experience: 5,
      profile_pic: 'https://images.pexels.com/photos/6749778/pexels-photo-6749778.jpeg'
    },
    {
      doc_name: 'Tima Miroshnichenko',
      education: 'MD',
      bio: 'Specialist in Neurologist.',
      years_of_experience: 13,
      profile_pic: 'https://images.pexels.com/photos/5452293/pexels-photo-5452293.jpeg'
    },
    {
      doc_name: 'Nancy Miroshnichenko',
      education: 'MD',
      bio: 'Specialist in General practitioner.',
      years_of_experience: 17,
      profile_pic: 'https://images.pexels.com/photos/12495583/pexels-photo-12495583.jpeg'
    },
    {
      doc_name: 'Loice Kare',
      education: 'MD',
      bio: 'Specialist in Neurologist.',
      years_of_experience: 11,
      profile_pic: 'https://images.pexels.com/photos/5215024/pexels-photo-5215024.jpeg'
    },
    {
      doc_name: 'Shaquille Kimolo',
      education: 'MD',
      bio: 'Specialist in Family medicine.',
      years_of_experience: 9,
      profile_pic: 'https://images.pexels.com/photos/5452293/pexels-photo-5452293.jpeg'
    },
    {
      doc_name: 'Edward Jenner',
      education: 'MD',
      bio: 'Specialist in Gastroenterologist.',
      years_of_experience: 14,
      profile_pic: 'https://images.pexels.com/photos/4033148/pexels-photo-4033148.jpeg'
    },
    {
      doc_name: 'Storm Akanji',
      education: 'MD',
      bio: 'Specialist in Oncologist.',
      years_of_experience: 12,
      profile_pic: 'https://images.pexels.com/photos/3902881/pexels-photo-3902881.jpeg'
    },
    {
      doc_name: 'Jane green',
      education: 'MD',
      bio: 'Specialist in Psychiatrist.',
      years_of_experience: 14,
      profile_pic: 'https://images.pexels.com/photos/5327580/pexels-photo-5327580.jpeg'
    },
    {
      doc_name: 'Sythia Robinson',
      education: 'MD',
      bio: 'Specialist in Cardiologist.',
      years_of_experience: 8,
      profile_pic: 'https://images.pexels.com/photos/5215017/pexels-photo-5215017.jpeg'
    },
    {
      doc_name: 'Faith Tutu ',
      education: 'MD',
      bio: 'Specialist in Radiologist.',
      years_of_experience: 6,
      profile_pic: 'https://images.pexels.com/photos/5215013/pexels-photo-5215013.jpeg'
    },
    {
      doc_name: 'Serique Kyalo',
      education: 'MD',
      bio: 'Specialist in Dermatologist.',
      years_of_experience: 16,
      profile_pic: 'https://images.pexels.com/photos/5452268/pexels-photo-5452268.jpeg'
    },
    # A
    # Add more doctors as needed
  ]
  
  Doctor.create!(doctors)