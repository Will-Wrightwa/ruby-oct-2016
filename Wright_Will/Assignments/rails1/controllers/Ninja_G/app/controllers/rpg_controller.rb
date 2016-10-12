class RpgController < ApplicationController
    def index
        @places = {Farm: 10..20, Cave: 5..10, House:2..5, Casino:-50..50}
        session[:log] = [] unless session[:log]                                 #initialze session
        session[:gold] = 0 unless session[:gold]
    end

    def earn
        @places = {Farm: 10..20, Cave: 5..10, House:2..5, Casino:-50..50}
        earnings = rand(@places[params["location"].to_sym])                                                                                      #calculate earnings
        session[:gold] += earnings                                                                                                              # add earnings to total
        session[:log].push({earnings: earnings, time: Time.new.strftime("(%Y/%m/%d %l:%M %P)"), location: params["location"]})                  # add log info
        redirect_to "/"
    end
end
