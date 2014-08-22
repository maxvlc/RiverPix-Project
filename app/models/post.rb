class Post < ActiveRecord::Base

	paginates_per 5
	mount_uploader :image, PostImageUploader
  has_many :comments, dependent: :destroy
  belongs_to :user, dependent: :destroy

	validates :title, presence: true, length: { minimum: 5 }

  def timestamp
    created_at.strftime('%d %B %Y %H:%M:%S')
  end

  def comments_for_post
    comments.count
  end
end
