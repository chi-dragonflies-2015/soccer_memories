get "/profile" do
  erb :profile
end

get "/login" do
  erb :login
end

post "/sessions" do
  @authenticated = User.authenticate(params[:username], params[:password])
    if @authenticated
      login_user(params[:username])
      redirect "/profile"
    else
      @invalid_user = "Please enter valid credentials"
      erb :login
    end
end

get '/logout' do
  logout_user
  redirect "/"
end

