#Gabriel Meunier 20/10/21
Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'public#showall'
  get '/recettes/:id', to: 'public#showid'
  get '/admin/recettes', to: 'admin/admin#showall'
  get '/admin/recettes/:id', to: 'admin/admin#showid'

  get '/mesrecettes', to: 'mesrecettes#showrecettes'
  get '/mesrecettes/:id', to: 'mesrecettes#showrecetteid'
end
