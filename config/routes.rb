Rails.application.routes.draw do
  root to: "exercises#show", defaults: { id: "introduction" }
  resources :exercises, only: [:index, :show]
  resources :invitations, only: [:index, :create, :destroy]
end
