Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :commerces, only: [:index, :show] do
    collection do
      get :decoration
      get :beaute
      get :locaux
      get :papeterie
      get :artisanat
      get :loisirs
      get :sport
      get :mode
      get :enfance
    end
  end


end
