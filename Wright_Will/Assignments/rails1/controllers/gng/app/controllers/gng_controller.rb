class GngController < ApplicationController
    def index
        session[:num] = rand(0..100) unless session[:num]
        session[:color] = '' unless session[:color]
        session[:state] = '' unless session[:state]
    end

    def guess
        puts params[:guess]
        puts session[:num]
        session[:color] = 'red'
        if params[:guess].to_i == session[:num]
            session[:color] = 'green'
            session[:state] = 'correct'

        elsif params[:guess].to_i > session[:num]
            session[:state] = 'Too High'
        else
            session[:state] = 'Too Low'
        end
        puts session[:state]
        redirect_to '/'
    end

    def reset
        session[:state] = ''
        session[:color] = ''
        session.clear
        redirect_to '/'
    end
end
