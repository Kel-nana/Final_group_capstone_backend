require 'rails_helper'

RSpec.describe 'api/v1/doctors', type: :request do
  describe 'GET/DOCTORS' do
    context 'without JWT' do
      before do
        get '/api/v1/doctors'
      end

      it 'returns unauthorized' do
        expect(response.body).to include('You need to sign in or sign up before continuing.')
      end
    end

    context 'with valid parameters' do
      before do
        create_doctor
      end

      it 'get all doctors' do
        get '/api/v1/doctors', headers: { Authorization: @authorization }
        expect(response).to have_http_status(:ok)
      end
    end
  end

  def create_doctor
    User.create(
      name: 'max213',
      email: 'max213@mail.com',
      password: 'pass1234',
      password_confirmation: 'pass1234',
      jti: Faker::Alphanumeric.alpha(number: 10)
    )

    post '/users/sign_in', params:
                      { user: {
                        email: 'max213@mail.com',
                        password: 'pass1234'
                      } }
    @authorization = response.headers['Authorization']
    Doctor.create(doc_name: 'john doe', education: 'MBBS MD', years_of_experience: 5, bio: 'Neuro sergeon',
                  profile_pic: 'profilepic.jpg', location: 'india')
  end
end
