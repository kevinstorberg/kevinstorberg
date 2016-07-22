class AdminsController < ApplicationController

  def show
  end
  
  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      session[:admin_id] = @admin.id
    end
  end

  private
    def admin_params
      params.require(:admin).permit(:name, :password)
    end
end
