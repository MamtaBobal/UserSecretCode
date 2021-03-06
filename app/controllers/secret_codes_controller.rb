class SecretCodesController < ApplicationController
  load_and_authorize_resource

  # GET /secret_codes
  # GET /secret_codes.json
  def index
    @secret_codes = SecretCode.all
    respond_to do |format|
      format.html
      format.json { render json: @secret_codes }
    end
  end

  def generate_n_secret_codes
    SecretCodeGenerator.new(params[:count]).perform!
    redirect_to secret_codes_path
  end

end
