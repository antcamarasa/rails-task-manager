Rails.application.routes.draw do

  get '/tasks', to: 'tasks#index'
  #verb URL        controler#action

  #Créer un restaurant
  get '/tasks/new', to: 'tasks#new'
  post '/tasks', to: 'tasks#create'

  #Voir le détail d'une tâche
  get '/tasks/:id', to: 'tasks#show', as: :task

  #Modifier un restaurant
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'

  #Supprimer un restaurant
  delete '/task/:id', to: 'tasks#destroy', as: :task_delete
end
