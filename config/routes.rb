Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "nums#index"

  resource :num, only: [:index, :new, :create]
end
