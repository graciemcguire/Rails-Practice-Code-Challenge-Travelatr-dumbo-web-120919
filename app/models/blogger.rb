class Blogger < ApplicationRecord
  has_many :posts, :dependent => :destroy
  has_many :destinations, through: :posts

  validates :name, uniqueness: true
  validates :age, numericality: { greater_than: 0 }
  validates :bio, length: { minimum: 30 }

  def total_likes
    self.posts.sum{ |post| post.likes }
  end

  def feature_post
    self.posts.max_by{ |post| post.likes }
  end

end
