require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  post '/team' do

    # params.each do |position, name|
    #   send ("@#{position}","=" "#{name}")
    #
    # end

   @name = params[:name]
   @coach = params[:coach]
   @pg = params[:pg]
   @sg = params[:sg]
   @pf = params[:pf]
   @sf = params[:sf]
   @c = params[:c]

    # binding.pry
    erb :team
  end

end
