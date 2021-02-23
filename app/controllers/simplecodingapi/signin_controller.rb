module Simplecodingapi
  class SigninController < AuthenticationByApiController
    # signin for users by vue.js APP
    # POST /auth_api/login
    def login
      puts "neel here"
      #byebug
      @user = User.find_by_email(params[:email])
      puts "user"
      puts @user
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

