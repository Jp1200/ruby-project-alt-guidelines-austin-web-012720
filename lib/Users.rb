class User < ActiveRecord::Base

  attr_reader :username, :password, :user_id

  def initialize(user_id=nil)
    @username = username
    @password = password
    @user_id = user_id
  end

  # Should be able to make inputs 


end
