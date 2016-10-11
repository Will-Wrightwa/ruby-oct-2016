Rails.application.routes.draw do
  root 'rand_word#index'
  get '/reset' => 'rand_word#reset'
end
