require_relative '../../config/environment'
class ApplicationController < Sinatra::Base
  configure do
    set :views, Proc.new { File.join(root, "../views/") }
    enable :sessions unless test?
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/login' do
    @user = User.find_by(username: params["username"])
    session[:user_id] = @user.id
<<<<<<< HEAD

    if !!@user == true
       redirect to '/account'
    else
      erb :error
    end
=======
>>>>>>> 2362f3f9491633f3bb7e698d30826888c212f525

    redirect to '/account'
  end

  get '/account' do

    erb :account

  end

  get '/logout' do

  end


end
