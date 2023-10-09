require 'rails_helper'

RSpec.describe 'api/v1/appointments', type: :request do
  describe 'GET/APPOINTMENTS' do
    context 'without JWT' do
      before do
        get '/api/v1/appointments'
      end

      it 'returns unauthorized' do
        expect(response.body).to include('You need to sign in or sign up before continuing.')
      end
    end

    context 'with valid parameters' do
      before do
        create_appointment
      end

      it 'returns all appointments' do
        get '/api/v1/appointments', headers: { Authorization: @authorization }
        expect(response).to have_http_status(:ok)
      end

      it 'deletes an appointment' do
        delete "/api/v1/appointments/#{@appointment1.id}", headers: { Authorization: @authorization }
        expect(response).to have_http_status(:no_content)
      end
    end
  end

  def create_appointment
    user = User.create(
      name: 'max213',
      email: 'max213@mail.com',
      password: 'pass1234',
      password_confirmation: 'pass1234',
      jti: Faker::Alphanumeric.alpha(number: 10)
    )
    doctor = Doctor.create(
      doc_name: 'john doe',
      education: 'MBBS MD',
      years_of_experience: 5,
      bio: 'Neuro sergeon',
      profile_pic: 'profilepic.jpg'
    )
    post '/users/sign_in', params:
                      { user: {
                        email: 'max213@mail.com',
                        password: 'pass1234'
                      } }
    @authorization = response.headers['Authorization']
    @appointment1 = Appointment.create(user_id: user.id, doctor_id: doctor.id, appointment_date: '2021-10-10',
                                       appointment_time: '2021-10-10 10:10:10', location: 'tester_333')
    @appointment2 = Appointment.create(user_id: user.id, doctor_id: doctor.id, appointment_date: '2022-08-04',
                                       appointment_time: '2021-10-10 10:10:10', location: 'tester_333')
  end
end
