Rails.application.routes.draw do
  # Index Page
  get '/tasks', to: 'tasks#index'
  # New Task
  get '/tasks/new', to: 'tasks#new'
  post '/tasks', to: 'tasks#create'
  # Details
  get '/tasks/:id', to: 'tasks#show', as: :task
  # Edit
  get "/tasks/:id/edit", to: 'tasks#edit', as: :task_edit
  patch "/tasks/:id", to: 'tasks#update'
  # Delete
  delete '/tasks/:id', to: 'tasks#destroy'
end
