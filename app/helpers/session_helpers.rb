helpers  do

  def login_user(username)
    session[:id] = User.find_by(username: username).id

    puts "THIS IS THE SESSION ID!!"
    puts session[:id]
  end

  def logout_user
    session[:id] = nil
  end


end