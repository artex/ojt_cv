Rails.application.routes.draw do
  root 'applicants#applicants'
  # post '/confirm', to: "applicants#confirm"
  resources :applicants, only: [:index, :show, :destroy] do
    collection do
      get :new_form, to: "applicants#applicants"
      post :test
      get :confirm, to: "applicants#confirm"
    end
  end
end
