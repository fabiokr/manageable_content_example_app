ManageableContentExampleApp::Application.routes.draw do

  get "contact/index"

  root :to => 'home#index'

  namespace 'admin' do
    resources :pages, :only => [:index, :edit, :update]
  end
  
end