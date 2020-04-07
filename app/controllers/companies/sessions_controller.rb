# frozen_string_literal: true

class Companies::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]
  include Accessible
  skip_before_action :check_user, only: :destroy

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  protected

  def after_sign_in_path_for(_resource)
    companies_dashboard_path
  end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end

  
end
