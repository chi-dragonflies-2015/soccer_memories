helpers  do

  def login_user(username)
    session[:id] = User.find_by(username: username).id
  end

  def logout_user
    session[:id] = nil
  end


end