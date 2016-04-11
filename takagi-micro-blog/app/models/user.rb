class User < ApplicationRecord
  has_many :micro_blogs
  has_many :followings
  has_many :followers, through: :followings, source: :followed_user
end
