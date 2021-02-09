Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get '/static_pages/user_photos', to: 'static_pages#user_photos'

  root "static_pages#user_photos"
end
