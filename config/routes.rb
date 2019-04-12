Rails.application.routes.draw do
  mount Ckeditor::Engine => "/ckeditor"
  scope "(:locale)", locale: /en|vi/ do
    root "home#index"
    devise_for :users
    resources :movies
    resources :film_categories
    resources :categories
    resources :films do
      resources :videos
    end
    resources :videos
  end
end
