Rails.application.routes.draw do
  resources :by_dates
  resources :brazil_data
  resources :states
  get "/by_dates/search/:initials", to: "by_dates#get_date"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
