class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def edit
    @project = Project.find(params[:id])
  end

  def create
    @project = kevin.projects.create(project_params)
    redirect_to projects_path
  end

  def destroy
    @project.destroy
    redirect_to projects
  end

  private
    def project_params
      params.require(:project).permit(:body)
    end
end
