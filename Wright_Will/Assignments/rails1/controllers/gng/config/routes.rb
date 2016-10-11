Rails.application.routes.draw do
root 'gng#index'
post '/guess' => 'gng#guess'
get '/reset' => 'gng#reset'
end
