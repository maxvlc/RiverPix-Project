class Post < ActiveRecord::Base

  has_many :comments
  belongs_to :user
	
  paginates_per 5
	mount_uploader :image, PostImageUploader
	validates :title, presence: true, length: { minimum: 5 }
  acts_as_taggable
  acts_as_taggable_on

  def timestamp
    created_at.strftime('%d %B %Y %H:%M:%S')
  end

  def comments_for_post
    comments.count
  end
end
