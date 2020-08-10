Rails.application.routes.draw do

  get '/ufs/:date', to: 'ufs#daily'
  get '/ufs/cliente/:client', to: 'ufs#stats'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
