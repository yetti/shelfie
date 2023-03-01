Rails.application.routes.draw do
  get "/404", to: "errors#not_found"
  get "/422", to: "errors#unprocessable"
  get "/500", to: "errors#internal_server"

  root "rails/welcome#index"
end
