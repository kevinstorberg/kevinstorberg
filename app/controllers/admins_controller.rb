class AdminsController < ApplicationController

  def show
    @project = Project.new
    @project.build_picture

    @blog = Blog.new
    @blog.build_picture
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
