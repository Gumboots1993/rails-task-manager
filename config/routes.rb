Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'tasks#index'
  # post "tasks", to: "tasks#create"
  # get "index/new", to: "tasks#new", as: :new_task
  # get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  # patch "show/:id", to: "tasks#update"
  # get "show/:id", to: "tasks#show", as: :task
  # delete "show/:id", to: "tasks#destroy"


  post 'tasks', to: 'tasks#create'
  get 'tasks/new', to: 'tasks#new', as: :new_task
  get 'tasks/:id', to: 'tasks#show', as: :task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'
  delete 'tasks/:id', to: 'tasks#destroy'
end
