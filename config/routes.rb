Rails.application.routes.draw do
  get 'login/login'
  get 'testing/index'
  root 'applicants#applicants'
  # post '/confirm', to: "applicants#confirm"
  resources :applicants, only: [:index, :show, :destroy] do
    collection do
      get :new_form, to: "applicants#applicants"
      post :confirm
      post :save
    end
  end
  get '/index', to: 'testing#index'
  post '/conf', to: 'testing#conf'
  get '/dashboard', to: 'login#dashboard'
  get '/login', to: 'login#login'
  post '/login', to: 'login#actionLogin'
  get '/logout', to: 'login#logout'
end
