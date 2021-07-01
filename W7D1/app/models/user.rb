class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    validates :session_token, presence: true, uniqueness: true
    validates :password_digest, presence: true
    after_initialize :ensure_token
    


    def self.find_by_credentials(username, password)
        user = User.find_by(username: username) 
        if user && user.check_password?(password)
            user
        else
            nil
        end
    end

    def reset_session_token!
        self.session_token = SecureRandom::urlsafe_base64
        self.save!
        self.session_token
    end

    def password=(password)
        @password = password
        self.password_digest = BCrypt::Password.create(password)
    end

    def check_password?(password)
        password_object = BCrypt::Password.new(self.password_digest)
        password_object.is_password?(password)
    end
    
    def ensure_token
        self.session_token ||= SecureRandom::urlsafe_base64
    end

end
