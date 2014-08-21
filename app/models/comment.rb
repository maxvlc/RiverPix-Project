class Comment < ActiveRecord::Base
  belongs_to :post

  
  def timestamp
    created_at.strftime('%d %B %Y %H:%M:%S')
  end
end
