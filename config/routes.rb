ManageableContentExampleApp::Application.routes.draw do

  get "contact/index"

  root :to => 'home#index'
  
end