require 'rails_helper'

RSpec.describe 'users/sign_in', type: :request do
  describe 'SESSION' do
    context 'with valid parameters' do
      before do
        post '/users', params:
                          { user: {
                            name: 'max',
                            email: 'max@mail.com',
                            password: 'pass4751',
                          } }
        
        post '/users/sign_in', params:
                          { user: {
                            email: 'max@email.com',
                            password: 'pass4751',
                          } }
      end
      
      it 'returns user signed in successfully' do
        expect(response.body).to include('User signed in successfully')
      end
    end

    context 'with invalid parameters' do
      before do
        post '/users/sign_in', params:
                          { user: {
                            email: 'max@email.com',
                            password: 'pass4',
                          } }
      end
      
      it 'returns invalid email or password' do
        expect(response.body).to include('Invalid Email or password.')
      end
    end
  end
end