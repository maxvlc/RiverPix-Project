module CommentsHelper

	def avatar_image_url
		image_tag 'default-avatar.jpg', :class => 'comment-avatar'
	end

	def delete_comment_url comment
		link_to 'Delete', [comment.post, comment],
			             method: :delete,
			             :class=>'btn btn-warning btn-xs',
			             data: { confirm: 'Are you sure?' }
	end




end
