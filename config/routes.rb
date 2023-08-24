Rails.application.routes.draw do
  root to: "exercises#show", defaults: { id: "hello-world" }
  resources :exercises, only: [:index, :show]
end
