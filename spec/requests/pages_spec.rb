# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Pages', type: :request do
  describe 'GET /' do
    it 'returns http success' do
      get '/'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /about' do
    it 'returns http success' do
      get '/about'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /faq' do
    it 'returns http success' do
      get '/faq'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /help' do
    it 'returns http success' do
      get '/help'
      expect(response).to have_http_status(:success)
    end
  end
end
