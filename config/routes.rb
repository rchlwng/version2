Rails.application.routes.draw do
  get 'contact/new'
  get 'contact/create'
  root 'static_pages#landing'
  get '/', to: 'static_pages#landing'
  get 'about', to: 'static_pages#about'
  get 'work', to: 'static_pages#work'
  get 'resume', to: 'static_pages#resume'
  get 'contact', to: 'contact#new'
  resources :contact, only: [:index, :new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
