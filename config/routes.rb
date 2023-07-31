Rails.application.routes.draw do
  get 'todolists/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'top' => 'homes#top'
  post 'todolists' => 'todolists#create' # この行を追加
  get 'todolists' => 'todolists#index' # この行を追加
  get 'todolists/:id' => 'todolists#show', as: 'todolist' # この行を追加
  get 'todolists/:id/edit' => 'todolists#edit', as: 'edit_todolist' # この行を追加
  patch 'todolists/:id' => 'todolists#update', as: 'update_todolist' # この行を追加
  delete 'todolists/:id' => 'todolists#destroy', as: 'destroy_todolist' # この行を追加
end
