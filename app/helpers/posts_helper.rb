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

	def post_image_url
		image_tag(@post.image_url)
	end

	def show_button
		link_to 'Show', @post, :class=>"btn btn-default btn-xs" ,:type=>'button'
	end

	def home_button
		link_to 'Home', posts_path, :class=>"btn btn-default btn-xs" ,:type=>'button'
	end
end
