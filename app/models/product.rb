# frozen_string_literal: true

class Product < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews

 # has_many :favorites
  #has_many :users, through: :favorites
end
