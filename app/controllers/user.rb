get "/profile" do
  erb :profile
end

######Current user routes

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


#######New user routes######
get '/users/new' do
  erb :new_user
end


post "/users" do
  @user = User.new(username: params[:username], password: params[:password])
  if @user.save
    login_user(@user.username)
    redirect "/profile/#{@user.id}"
  else
    @errors = "please enter a login and password"
    erb :new_user
  end

end

