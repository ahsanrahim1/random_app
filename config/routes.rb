Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/fortune_url" => "pages#fortune_method"
  get "/loto_url" => "pages#loto_method"
  get "/99_bottles" => "pages#bottles_method"
end
