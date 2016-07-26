class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private
    def current_admin
      Admin.find_by(id: session[:admin_id])
    end

    helper_method :current_admin
end
