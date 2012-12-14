BoothCheckin::Application.routes.draw do
  
  resources :leads
  resources :people

  get "pages/start"
  get "pages/overview"
  get "pages/select"

  match "/people/select/:id" => "people#select"

  root :to => 'pages#start'

end
