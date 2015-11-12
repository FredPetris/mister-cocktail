Rails.application.routes.draw do

root 'cocktails#index'

  resources :cocktails do
    resources :doses, only: [:new, :create]
  end

resources :doses, only: [:destroy]
# delete "doses/:id", to: "doses#destroy"

end
