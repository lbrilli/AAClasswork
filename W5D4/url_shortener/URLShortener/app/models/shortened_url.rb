class ShortenedUrl < ApplicationRecord

    require 'securerandom'

    validates :short_url, presence: true, uniqueness: true
    validates :long_url, presence: true

    def self.random_code
        code = SecureRandom.urlsafe_base64
    end

end