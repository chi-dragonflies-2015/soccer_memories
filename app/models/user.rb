class User < ActiveRecord::Base

  validates :username, presence: true
  validates :password, presence: true

  def password
    @password ||= BCrypt::Password.new(hashed_password)
  end

  def password=(entered_password)
    self.hashed_password = BCrypt::Password.create(entered_password)
  end

  def self.authenticate(username, entered_password)
    user = User.find_by(username: username)
    if user && user.password == entered_password
      user
    else
      nil
    end
  end


end
