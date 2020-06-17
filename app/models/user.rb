class User < ApplicationRecord
    has_many :reviews
    has_many :products, through: :reviews

    #has_many :favorites
    #has_many :products, through: :favorites
end
