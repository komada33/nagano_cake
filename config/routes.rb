Rails.application.routes.draw do
  devise_for :customers,skip: [:password], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions',
}

  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions",
}

root 'public/homes#top'
get "/about" => "public/homes#about", as: "about"
get "/admin" => "admin/homes#top"

  scope module: :public do
    resources :items
    resources :addresses
    resources :customers
    resources :orders
  end

  namespace :admin do
    resources :customers
    resources :genres
    resources :items
    resources :orders
    resources :orders_details
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
