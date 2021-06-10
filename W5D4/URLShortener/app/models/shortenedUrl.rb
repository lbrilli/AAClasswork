class ShortenedUrl < ApplicationRecord

    validates :short_url, presence: true, uniqueness: true
    validates :long_url, presence: true

end