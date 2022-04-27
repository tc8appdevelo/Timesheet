class ProjectsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @projects = Project.all
  end
  
  def show
    @project = Project.find_by(id: params[:id])
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      render json: @project
    else
      render json: @project.errors.full_messages
    end
  end

  def update
  end

  def destroy
  end

  private
    def project_params
      params.permit(:title, :description,
                    :total_hours, :worked_hours,
                    :completion)
    end

end
