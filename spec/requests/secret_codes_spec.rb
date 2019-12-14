require 'rails_helper'

RSpec.describe 'Secret Codes', type: :request do
  # initialize test data 
  let!(:secret_codes) { create_list(:secret_code, 10) }
  let(:secret_code_id) { secret_codes.first.id }

  describe 'GET /secret_codes' do
    # make HTTP get request before each example
    before { get '/secret_codes.json' }

    it 'returns secret_codes' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end
