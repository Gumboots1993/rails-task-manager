class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @newtask = Task.new # needed to instantiate the form_for
  end

  def show
    @task = Task.find(params[:id])
  end

  def create
    @newtask = Task.new(task_params)
    @newtask.save
    # Will raise ActiveModel::ForbiddenAttributesError

    redirect_to task_path(@newtask)
  end

  def edit
    @updatetask = Task.find(params[:id])
  end

  def update
    @updatetask = Task.find(params[:id])
    @updatetask.update(task_params)
    # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to task_path(@updatetask)
  end

  def destroy
    @destroytask = Task.find(params[:id])
    @destroytask.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to root_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
