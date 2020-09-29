class ProjectsController < ApplicationController
  def index
    @projects = Project.all.order('created_at DESC')
    @project = Project.new
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new project_params
    respond_to do |format|
      if @project.save
        format.js
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render json: @project, status: :created, location: @project }
      else
        format.html { render action: "new" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @project = Project.find params[:id]
  end

  def update
    @project = Project.find params[:id]
    @project.update_attributes project_params
    respond_to do |format|
      if @project.update_attributes project_params
        format.js
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render json: @project, status: :ok, location: @project }
      else
        format.html { render action: "edit" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @project = Project.find params[:id]
    @project.destroy
    redirect_to root_path
  end

  private
  def project_params
    params.require(:project).permit([:name])
  end
end