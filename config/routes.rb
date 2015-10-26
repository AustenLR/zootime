Rails.application.routes.draw do

  resources :zoos, shallow: true do
    resources :animals
  end

end
