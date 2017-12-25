Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'start#index'
  devise_for :users, path: '', path_names: {sign_in: 'login' ,
    											sign_out:'logout',
    											sign_up: 'register'
    										} , :controllers => { :sessions => "users/sessions" }

resources :tasks


resources :employees

end