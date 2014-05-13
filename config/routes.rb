HthsSplash::Application.routes.draw do
  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}

  resources :users
  resources :courses do
    get 'register', :on => :member
    get 'unregister', :on => :member
  end
  match "/about" => "home#about", :via => [:get]
  match "/faq" => "home#faq", :via => [:get]
  match "/contact" => "home#contact", :via => [:get]
  match "/users" =>"devise/sessions#new", :via => [:get]
end