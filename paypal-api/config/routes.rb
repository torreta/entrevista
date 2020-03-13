Rails.application.routes.draw do
  resources :users

  scope '/api' do
    post 'user_token' => 'user_token#create'
    post '/users' => 'users#create'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
