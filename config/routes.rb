Rails.application.routes.draw do

root 'static_pages#index'

get 'games', to: 'static_pages#games'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
