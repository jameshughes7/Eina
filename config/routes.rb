Rails.application.routes.draw do
  get 'restaurants/index'

  get 'welcome/index'

  resources :restaurants

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
