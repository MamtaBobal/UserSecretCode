require 'rails_helper'

describe SecretCodesController, type: [:controller] do
  let!(:non_admin_user) { create(:user) }
  let!(:admin_user) { create(:user, :admin) }

  describe '#index' do
    let!(:secret_codes) { create_list(:secret_code, 10) }

    context 'admin user logged in' do
      it 'returns 200' do
        sign_in(admin_user)
        expect(response_status).to eq(200)
      end

      it 'returns 10 secret_codes' do
        sign_in(admin_user)
        get 'index', format: :json
        expect(response_size).to eq(10)
      end
    end

    context 'admin user not logged in' do
      it 'returns 403' do
        sign_in non_admin_user
        get 'index', format: :json
        expect(response_status).to eq(403)
      end
    end

    context 'no body logged in' do
      it 'returns 403' do
        sign_in nil
        get 'index', format: :json
        expect(response_status).to eq(403)
      end
    end
  end

  describe '#generate_n_secret_codes' do
    context 'admin user logged in' do
      it 'creates n secret codes' do
        sign_in admin_user
        get :generate_n_secret_codes,  params: { :count => 10 }
        expect(SecretCode.count).to eq(10)
      end
    end

    context 'non admin user logged in' do
      it 'does not creates any secret codes' do
        sign_in non_admin_user
        get :generate_n_secret_codes,  params: { :count => 10 }
        expect(response_status).to eq(302)
        expect(SecretCode.count).to eq(0)
      end
    end
  end
end
