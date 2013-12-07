Threesquare::Application.routes.draw do

  root 'locations#index'

  get 'send_text' => 'sendtexts#index'
  post 'send_text' => 'sendtexts#send_text_message'

  resources :locations
end
