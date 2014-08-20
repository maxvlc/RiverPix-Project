class Post < ActiveRecord::Base

	paginates_per 5
	mount_uploader :image, PostImageUploader
  has_many :comments, dependent: :destroy

  def timestamp
    created_at.strftime('%d %B %Y %H:%M:%S')
  end
end
