class Helpers

  def self.current_user(session)
    @user = User.find(session[:user_id])
    if session[:user_id] == @user
      @user
    end
    @user
  end

  def self.is_logged_in?(session)
    !!self.current_user(session)
  end

end
