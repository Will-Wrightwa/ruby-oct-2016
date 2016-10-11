class RandWordController < ApplicationController
    def index
        session[:count] = 0 unless session[:count]
        session[:count] += 1
        @rand = ""
        alpha =  %w(a b c d e f g h j k l m n o p q r s t u v w x y z)
        14.times{@rand+= alpha.sample}
    end
    def reset
        session.clear
        redirect_to '/'
    end
end
