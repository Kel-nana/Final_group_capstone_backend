require 'rails_helper'

RSpec.describe 'users/registration', type: :request do
  describe 'POST/SIGNUP' do
    context 'with blank parameters: password' do
      before do
        post '/users', params:
                          { user: {
                            name: 'max',
                            email: 'max@mail.com',
                            password: ''
                          } }
      end

      it 'returns unprocessable entity response' do
        parsed_response = JSON.parse(response.body)
        expect(parsed_response['status']['errors']).to include("Password can't be blank")
      end
    end

    context 'with blank parameters: email' do
      before do
        post '/users', params:
                          { user: {
                            name: 'max',
                            email: '',
                            password: 'pass4751'
                          } }
      end

      it 'returns user cannot be created' do
        expect(response.body).to include('User could not be created successfully')
      end
    end

    context 'with blank parameters: email' do
      before do
        post '/users', params:
                          { user: {
                            name: 'max',
                            email: '',
                            password: 'pass4751'
                          } }
      end

      it 'returns user cannot be created' do
        parsed_response = JSON.parse(response.body)
        expect(parsed_response['status']['errors']).to include("Email can't be blank")
      end
    end

    context 'with valid parameters' do
      before do
        post '/users', params:
                          { user: {
                            name: 'john',
                            email: 'john@mail.com',
                            password: 'pass1234'
                          } }
      end

      it 'returns ok response' do
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq('application/json; charset=utf-8')
      end

      it 'returns correct data' do
        expect(response.body).to include('john')
        expect(response.body).to include('john@mail.com')
      end
    end
  end
end
