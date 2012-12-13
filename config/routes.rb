BoothCheckin::Application.routes.draw do
  
  get "pages/home"
  get "pages/start"

  root :to => 'pages#start'

end
