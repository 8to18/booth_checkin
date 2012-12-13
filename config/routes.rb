BoothCheckin::Application.routes.draw do
  
  resources :leads
  resources :people

  get "pages/start"
  get "pages/overview"

  root :to => 'pages#start'

end
