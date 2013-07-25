class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id
  validates :user_id, presence:true
  belongs_to :user
  default_scope -> {order('created_at DESC')}
  validates :content, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true
  

end
