class User < ApplicationRecord
    validates :username, presence:true, uniqueness:true
    validates :password_digest, presence:true
    validates :session_token, presence:true, uniqueness:true

    def self.find_by_credential(username,password)
        user = User.find_by(username: username)

        if user && user.is_password(password)
            user
        else
            nil
        end
    end

    def password=(password)
        @password=password
        self.password_digest = BCrypt::Password.create(password)
    end
end
