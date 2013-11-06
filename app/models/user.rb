class User < ActiveRecord::Base
  include Crowdblog::User
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :token_authenticatable, :trackable, :omniauthable

end
