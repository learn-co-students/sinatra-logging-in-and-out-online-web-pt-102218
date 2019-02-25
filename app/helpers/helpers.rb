class Helpers < ActiveRecord::Base

  def self.current_user(session)
    @user = User.find_by(id: session[:user_id])
  end 


end
