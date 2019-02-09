class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 255 }

  has_many :likes
  has_many :like_users, through: :likes, source: :like_users #<=OK?

end
