Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
   authenticated :user do
     root 'links#index', as: :authenticated_root
   end

   unauthenticated do
     root 'devise/registrations#new', as: :unauthenticated_root
   end
  end

  resources :links

  resources :visits

  get '/:slug' => 'visits#create'

  get '/links' => 'links#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
