Rails.application.routes.draw do
  # devise_scope :user do
  #   delete "/users/sign_out",  :to => "devise/sessions#destroy"
  # end
  devise_for :users
  resources :users
    mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  root to: "portal#index"
end
  