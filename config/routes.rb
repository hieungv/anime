Rails.application.routes.draw do
  resources :reviews
  mount Ckeditor::Engine => "/ckeditor"
  scope "(:locale)", locale: /en|vi/ do
    root "home#index"
    devise_for :users
    resources :film_categories, :users
    resources :categories, path: "thể loại"
    resources :films, path: "anime" do
      resources :videos, path: "tập"
    end
    resources :videos, path: "tập" do
      resources :reviews
    end
  get "auth/facebook", as: "auth_provider"
  get "auth/facebook/callback", to: "users#login"
  end
end
