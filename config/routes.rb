Rails.application.routes.draw do

resources :tasks do 
    resources :task_options
  end  
    
root "tasks#index"

end
