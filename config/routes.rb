Rails.application.routes.draw do
  root 'projects#index'
  #get 'projects/new'
  #get 'projects/index'
  #get 'projects/create'
  #get 'projects/edit'
  #get 'projects/update'
  #get 'projects/destroy'
  resources :projects
  #get 'tasks/index'
  #get 'tasks/new'
  #get 'tasks/create'
  #get 'tasks/edit'
  #get 'tasks/update'
  #get 'tasks/complete'
  #get 'tasks/destroy'
  resources :tasks do
    put :complete, on: :member
  end

end
