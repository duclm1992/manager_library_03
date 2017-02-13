class AdminController < ApplicationController
  before_action :logged_in_user, :verify_admin

  private
  def verify_admin
    redirect_to root_url unless current_user.is_admin?
  end
end
