class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 255 }
  
  has_many :likes
  has_many :liking_users, through: :likes, source: :user
  
# マイクロポストにいいねする
#  def like(user)
#    likes.create(user_id: user.id)
#  end

# マイクロポストのいいねを解除する
#  def unlike(user)
#    likes.find_by(user_id: user.id).destroy
#  end
end
