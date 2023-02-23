Rails.application.routes.draw do
  resources :lists, only: %i[index new create show] do
    resources :bookmarks, only: %i[create]
  end
end
