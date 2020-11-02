class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: { in: 4..200 }
  validates :email, presence: true, uniqueness: true, length: { in: 10..254 }, format:
  {
    with: URI::MailTo::EMAIL_REGEXP
  }
  validates :password, presence: true, length: { in: 8..30 }
  has_many :posts
  has_many :comments
end
