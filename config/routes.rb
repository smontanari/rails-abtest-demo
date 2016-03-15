Rails.application.routes.draw do
  post 'abtest/do_it'
  get  'abtest/thank_you'
  get  'abtest/reset_test'


  get '/vanity' =>'vanity#index'
  get '/vanity/participant/:id' => 'vanity#participant'
  post '/vanity/complete'
  post '/vanity/chooses'
  post '/vanity/reset'
  post '/vanity/enable'
  post '/vanity/disable'
  post '/vanity/add_participant'
  get '/vanity/image'

  root 'abtest#index'
end
