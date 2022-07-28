# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  def new
    super do |resource|
      redirect_to '/users/sign_in' and return
    end
  end

  # POST /resource/sign_in
  def create
    super do |resource|
      redirect_to '/home_pages' and return
    end
  end

  # DELETE /resource/sign_out
  def destroy
    super do |resource|
      redirect_to '/users/sign_in' and return
    end
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  end
end
