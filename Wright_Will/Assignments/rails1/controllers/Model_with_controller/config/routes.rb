Rails.application.routes.draw do
    get '/users/total' => 'int_model_c#total'
    get '/users' => 'int_model_c#all_users'
    get '/users/new' => 'int_model_c#new'
    post '/users/create' => 'int_model_c#create'
    get '/users/create' => 'int_model_c#create_random'
    get 'users/:id'=> 'int_model_c#show'
    get '/users/:id/edit' => 'int_model_c#edit'
    post '/users/:id/update' => 'int_model_c#update'
    


end
