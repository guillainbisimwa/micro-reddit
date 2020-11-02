class User < ApplicationRecord

  validates :username, presence: true, uniqueness: true, length: { in: 4..20 }
  validates :email, presence: true, uniqueness: true, length: { in: 10..30 }
  validates :password, presence: true, length: { in: 8..30 }
  # has_many posts
end
