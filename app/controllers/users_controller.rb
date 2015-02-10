class UsersController < ApplicationController
respond_to :html

 def new
    @signup_form = Signup.new
    end

    def create
    @signup = Signup.new(signup_params)
    @signup.register
    respond_with @signup_form, location: root_path
    end

    private
    def signup_params
    params.require(:signup).permit(:email, :github, :twitter)
    end
    end

