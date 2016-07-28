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
    @project = Project.new(project_params)
    if @project.save
      flash[:success] = "Woohoo!!!!"
      # @picture = Picture.create(admin_id: kevin.id, postable_type: "Project", postable_id: @project.id)
    else
      p @project.errors.inspect
      flash[:alert] = @project.errors.inspect
    end
    redirect_to projects_path
  end

  def destroy
    @project.destroy
    redirect_to projects
  end

  private

    # def picture_params
    #   params.require(:picture).permit(:image)
    # end

    def project_params
      params.require(:project).permit(:body, :title, picture_attributes: [:image, :picturable_type, :picturable_id])
    end
end
