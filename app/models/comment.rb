class Comment < ApplicationRecord
  validates :body, presence: true, length: { in: 3..250 }
  belongs_to :user
  belongs_to :post
end
