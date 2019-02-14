class Helpers
    def self.current_user(param)
        User.find(param[:user_id])
    end

    def self.is_logged_in?(session)
        true if session.include?(:user_id)
    end

end