class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  
  def timestamp
    created_at.strftime('%d %B %Y %H:%M:%S')
  end
end
