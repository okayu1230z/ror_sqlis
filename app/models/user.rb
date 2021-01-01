class User < ApplicationRecord
    before_create :generate_token
    has_many :articles, dependent: :destroy

    def generate_token
        self.id = loop do
          random_token = SecureRandom.uuid
          break random_token unless self.class.exists?(id: random_token)
        end
    end
end
