class Helpers

  def self.current_user(hash)
    @user = User.find(hash[:user_id])
    @user
  end

  def self.is_logged_in?(hash)
<<<<<<< HEAD

    !!current_user(hash)
=======
    !!current_user
>>>>>>> 2362f3f9491633f3bb7e698d30826888c212f525
  end
end
