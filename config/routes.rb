Rails.application.routes.draw do
  root 'applicants#applicants'
  post '/confirm', to: "applicants#confirm"
end
