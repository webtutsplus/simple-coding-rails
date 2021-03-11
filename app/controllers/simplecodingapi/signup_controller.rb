module Simplecodingapi
  # signup for users by vue.js APP
  class SignupController < AuthenticationByApiController
    # Users/nmadhab/hobby/simple-coding-rails/vendor/bundle/ruby/2.7.0/gems/
    # actionpack-6.0.3.4/lib/action_controller/metal/request_forgery_protection.rb
    # line 231
    # Following must be sent in the body of the POST request
    # {
    #     "email" : "shivam.agrawal.2000@gmail.com",
    #     "name" : "Shivam Agarwal",
    #     "password": "test1234",
    #     "password_confirmation" : "test1234",
    #     "username" : "shivamag00"
    # }

    prepend_before_action :require_no_authentication, only: []
    skip_before_action :verify_authenticity_token

    def signup
      @user = User.new(user_params)
      @user.name = @user.email
      if @user.save
        render json: @user, status: :created
      else
        render json: { errors: @user.errors.full_messages },
               status: :unprocessable_entity
      end
    end

    private
    def user_params
      params.permit(:email, :password, :password_confirmation, :name, :username)
    end

  end
end

