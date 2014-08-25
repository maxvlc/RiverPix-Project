class Post < ActiveRecord::Base

  has_many :comments, dependent: :destroy
  belongs_to :user, dependent: :destroy
	paginates_per 5
	mount_uploader :image, PostImageUploader
	validates :title, presence: true, length: { minimum: 5 }

  def timestamp
    created_at.strftime('%d %B %Y %H:%M:%S')
  end

  def comments_for_post
    comments.count
  end
end
