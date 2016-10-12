Rails.application.routes.draw do
  root "rpg#index"
  post '/earn' => 'rpg#earn'
end
