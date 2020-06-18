class User < ApplicationRecord
    has_many :reviews
    has_many :products, through: :reviews

    #has_many :favorites
    #has_many :products, through: :favorites

    include BCrypt

    def password
      @password ||= Password.new(password_hash)
    end
  
    def password=(new_password)
      @password = Password.create(new_password)
      self.password_hash = @password
    end
end
