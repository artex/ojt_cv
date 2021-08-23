Rails.application.routes.draw do
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
end
