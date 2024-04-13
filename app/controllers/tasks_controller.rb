class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
    redirect_to root_path
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def  edit
    # p params[:id]
    @task = Task.find(params[:id])
  end




  private
   def task_params
     params.require(:task).permit(:title)
  end

end
