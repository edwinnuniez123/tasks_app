class TasksController < ApplicationController
  def index
  end

  def create
    @task=Task.new(params[:task])
    if @task.save
        redirect_to @task #/tasks/1/
    end
  end

  def new
     @task=Task.new
  end

  def update
  end

  def edit
  end

  def show
      @task=task.find(params[:id])
  end

  def destroy
  end
end
