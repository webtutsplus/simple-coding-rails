module Simplecodingapi
  # Sign In for users by vue.js APP
  # POST /simplecodingapi/login
  class SigninController < AuthenticationByApiController

    prepend_before_action :require_no_authentication, only: []
    skip_before_action :verify_authenticity_token

    def login
      @user = User.find_by_email(params[:email])
      if @user&.valid_password?(params[:password])
        token = JsonWebToken.encode(user_id: @user.id)
        time = Time.now + 24.hours.to_i
        render json: { token: token, exp: time.strftime("%m-%d-%Y %H:%M"),
                       username: @user.username }, status: :ok
      else
        render json: { error: 'unauthorized' }, status: :unauthorized
      end
    end


  end
end

