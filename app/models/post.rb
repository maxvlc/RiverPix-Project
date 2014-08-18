class Post < ActiveRecord::Base
	mount_uploader :image, PostImageUploader
  paginates_per 5
  has_many :comments, dependent: :destroy

  def timestamp
    created_at.strftime('%d %B %Y %H:%M:%S')
  end
end
