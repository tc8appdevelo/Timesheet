class ProjectsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @projects = Project.all
  end
  
  def show
    @project = Project.find_by(id: params[:id])
  end

  def new
    # look into why you need new method, all it does is 
    # pass empty thing to the view, it was in the official
    # rails tutorial, read it again later.
    @project = Project.new
  end

  def edit
    @project = Project.find(params[:id])
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
    @project = Project.find_by(id: params[:id])
    
    if @project.update(project_params)
      render json: @project
    else
      render json: "update project failed"
    end
  end

  def destroy
    @project = Project.find(params[:id])
    if @project.destroy
      render json: "destroyed"
    else
      render json: "something went wrong deleting project"
    end
  end

  private
    def project_params
      params.permit(:title, :description,
                    :total_hours, :worked_hours,
                    :completion)
    end

end
