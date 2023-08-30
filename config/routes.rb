Rails.application.routes.draw do
  root to: "exercises#show", defaults: { id: "introduction" }
  resources :exercises, only: [:index, :show] do
    get "files/:md5", to: "files#show", as: :file
  end
  resources :invitations, only: [:index, :create, :destroy]
end
