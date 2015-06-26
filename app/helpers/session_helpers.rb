helpers  do

  def login_user(username)
    session[:user_id] = User.find_by(username: username).id
  end


end