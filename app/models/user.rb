class User < ActiveRecord::Base

  validates :email, {uniqueness: true, presence: true}
  validates :password, {presence: true}


end
