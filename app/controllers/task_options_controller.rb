class TaskOptionsController < ApplicationController
 before_action :set_task
def create
 @task_option = @task.task_options.create(task_option_params)
 redirect_to @tasks
end

def destroy2
 @task_option = @task.task_options.find(params[:id])
 if @task_option.destroy
  flash[:success] = "Task option was deleted."
 else
  flash[:error] = "Task option could not be deleted."
 end
 redirect_to @task 
end

private
def set_task
 @task = Task.find(params[:task_id])
end
def task_option_params
 params[:task_option.permit(:content)
end
end