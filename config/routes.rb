Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'root#index'
  root 'tutor#index', as: 'home'

  resources :tutor
  resources :subject
  resources :took

end
