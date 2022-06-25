Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: :registrations }
  resource :bank_detail, only: [:new, :create]
  resource :profile, only: [:new, :create]
  root to: 'home#landing'
end
