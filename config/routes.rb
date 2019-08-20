Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get '/sp/:id', to: "sequence_poses#seqposes"
  # post '/bulkcreatesp', to: "sequence_poses#bulkcreate"

  get '/userreviews/:id', to: "users#user_reviews"
  get '/bodegasreviews/', to: "bodegas#bodegas_reviews"


  resources :users
  resources :reviews
  resources :bodegas


end
