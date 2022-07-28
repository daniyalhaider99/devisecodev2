Rails.application.routes.draw do

  devise_scope :user do
    # write all your routes inside this block
    root to: 'users/sessions#new'
    get 'sign_in', to: 'devise/sessions#new'
  end

  resources :home_pages

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    password: 'user/password/new'
  }
end
