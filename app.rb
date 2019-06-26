require 'sinatra/base'

class App < Sinatra::Base

    get '/newteam' do
        erb :newteam
    end 

    post '/team' do
        @team_name = params[:name]
        @coach = params[:coach]
        @pt_guard = params[:pg]
        @shoot_guard = params[:sg]
        @pwr_forward = params[:pf]
        @small_forward = params[:sf]
        @center = params[:c]
        erb :team
    end
end
