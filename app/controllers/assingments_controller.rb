class AssingmentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @assingments = current_user.assingments
  end

  def create
    @task.find(params[:task_id])
    @assingment = Assingment.new(task: @task, user: current_user)
    if @assingment.save
      redirect_to task_path
    else
      redirect_to task_path
    end
  end

  def update
    @assingment = Assingment.find(params[:id])
    if @assingment.completed == false
      @assingment.update_attributes(completed: true)
    else
      @assingment.update_attributes(completed: false)
    end
    @assingment.save
    redirect_to assingments_path
  end

  def complete
    @task = Task.find(params[:task_id])
    @assingment = Assingment.new(task: @task, user: current_user, completed: true)
    @assingment.save

    if @assingment.save
      redirect_to tasks_path, notice: 'La tarea fue completada'
    else
      redirect_to tasks_path, alert: 'La tarea no ha sido completada'
    end
  end

  def nocomplete
    @task = Task.find(params[:task_id])
    @assingment = Assingment.new(task: @task, user: current_user, completed: false)
    @assingment.save

    if @assingment.save
      redirect_to tasks_path, notice: 'La tarea ya no está completada'
    else
      redirect_to tasks_path, alert: 'La tarea sigue completa'
    end
  end
end
