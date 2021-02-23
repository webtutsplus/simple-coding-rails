module Simplecodingapi
  class SignupController < AuthenticationByApiController
    # signup for users by vue.js APP

    def signup
      @user = User.new(params)
      if @user.save
        render json: @user, status: :created
      else
        render json: { errors: @user.errors.full_messages },
               status: :unprocessable_entity
      end
    end

  end
end

