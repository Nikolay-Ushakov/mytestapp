class TasksController < ApplicationController
  def index
    @tasks = Task.where(status: false).order('priority DESC, created_at')
    @completed_tasks = Task.where(status: true).order('updated_at')
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new task_params
    respond_to do |format|
      if @task.save
        format.js
        format.html { redirect_to @task, notice: 'Task was successfully created.' }
        format.json { render json: @task, status: :created, location: @task }
      else
        format.html { render action: "new" }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
    redirect_to root_path
  end

  def edit
    @task = Task.find params[:id]
  end

  def update
    @task = Task.find params[:id]
    @task.update_attributes task_params
    respond_to do |format|
      if @task.update_attributes task_params
        format.js
        format.html { redirect_to @task, notice: 'Task was successfully updated.' }
        format.json { render json: @task, status: :ok, location: @task }
      else
        format.html { render action: "edit" }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
    redirect_to root_path
  end

  def complete
    @task = Task.find params[:id]
    @task.complete!
    redirect_to root_path
  end

  def destroy
    @task = Task.find params[:id]
    @task.destroy
    redirect_to root_path
  end

  private
  def task_params
    params.require(:task).permit([
                                     :title, :priority, :deadline, :status, :project_id
                                 ])
  end
end