class SignupsController < ApplicationController
  def create
    @signup = SignupForm.new(params[:signup])

    if @signup.save
      redirect_to root_path
    else
      render "new"
    end
  end
end