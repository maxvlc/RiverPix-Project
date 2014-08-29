module PostsHelper

	def edit_post_button
		link_to 'Edit', edit_post_path(@post), :class=>"btn btn-info btn-xs" ,:type=>'button'
	end

	def delete_post_button
		link_to 'Delete', post_path(@post), method: :delete, data: { confirm: 'Are you sure?' }, :class=>"btn btn-default btn-xs" ,:type=>'button'
	end

	def social_buttons
		social_share_button_tag(@post.title, :url => request.original_url)
	end

	def social_buttons_on_post post
		social_share_button_tag(post.title, :url => request.original_url)
	end

	def show_button
		link_to 'Show', @post, :class=>"btn btn-default btn-xs" ,:type=>'button'
	end

	def home_button
		link_to 'Home', posts_path, :class=>"btn btn-default btn-xs" ,:type=>'button'
	end

	def post_title post
		link_to post.title, post_path(post)
	end

	def avatar_user_on_post post
		image_tag post.user.avatar, class: 'post-avatar'
	end

	def show_buttons_for_user_actions
		if user_signed_in?
      if (@post.user_id == current_user.id)
        edit_post_button + ' ' + delete_post_button
      end
    end
  end

  def show_admin_buttons
  	if current_user.admin?
  		edit_post_button + ' ' + delete_post_button
  	end
  end

	def avatar_image_on_post
		image_tag @post.user.avatar, class: 'post-avatar'
	end 

	# Not used after install redactor gem

	# def post_image post
	# 	link_to image_tag(post.image_url), (post.image_url), :target => "_blank"
	# end

	def show_post_image
		link_to image_tag(@post.image_url), (@post.image_url), :target => "_blank"
	end

	def post_body post
		result = post.body
		result.html_safe
	end

end
