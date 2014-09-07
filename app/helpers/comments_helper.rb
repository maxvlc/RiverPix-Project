module CommentsHelper

	def avatar_image_on_comment comment
			image_tag comment.user.avatar, :class => 'comment-avatar'
	end

	def delete_comment_url comment
		link_to 'Delete', [comment.post, comment],
			             method: :delete,
			             :class=>'btn btn-warning btn-xs',
			             data: { confirm: 'Are you sure?' }
	end

	def show_delete_comment_button comment
		if user_signed_in?
		  if comment.commenter == current_user.name
				delete_comment_url comment
			end
		end
	end


end
