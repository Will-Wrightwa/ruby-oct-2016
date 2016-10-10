class IntModelCController < ApplicationController
    def all_users
        render json: User.all
    end
    def new
        render 'new'
    end
    def create
        User.create name: params[:name]
        redirect_to '/users'
    end
    def create_random
        name = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z).sample(7).join()
        User.create(name:name)
        redirect_to '/users'
    end
    def show
        render json: User.find(params[:id])
    end
    def edit
        @user = User.find(params[:id])
        render 'edit'
    end
    def update
        User.find(params[:id]).update(name:params[:name])
        redirect_to '/users'
    end
    def total
        render text: User.all.count
    end
end
