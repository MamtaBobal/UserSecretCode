Rails.application.routes.draw do
  devise_for :users,
  controllers: {
    registrations: 'registrations'
  }

  resources :secret_codes do
    collection do
      get 'generate_n_secret_codes'
    end
  end

  root :controller => "dashboard", :action => "index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
