Rails.application.routes.draw do
  
  devise_for :users
  resources :movies do
  	resources :reviews, except: [:show, :index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "movies#index" #The name of the Scaffold was Movie, but in the link it has to be lowercase and pluralized
end
