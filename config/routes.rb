Rails.application.routes.draw do
  mount Ckeditor::Engine => "/ckeditor"
  scope "(:locale)", locale: /en|vi/ do
    root "movies#index"
    devise_for :users
    resources :movies
  end
end
