module ApplicationHelper

	def post_new_button
		link_to 'New Post', new_post_path, :class=>"btn btn-success btn-xs" ,:type=>'button'
	end

	def edit_user_button
		link_to 'Edit Profile', edit_user_registration_path, :class=>"btn btn-info btn-xs" ,:type=>'button'
	end

	def sign_out_button
		link_to "Sign out",destroy_user_session_path, method: :delete , id: "sign_out", :class=>"btn btn-danger btn-xs" ,:type=>'button'
	end

	def avatar_image
		image_tag(current_user.avatar_url, size: "30")
	end

	def sign_in_button
		link_to "Sign in", new_session_path(:user), id: "sign_in" , :class=>"btn btn-success btn-xs" ,:type=>'button'
	end

	def sign_up_button
		link_to "Sign up",new_user_registration_path, id: "sign_up" , :class=>"btn btn-primary btn-xs" ,:type=>'button'
	end

	def avatar_image_on_post
		image_tag @post.user.avatar, class: 'post-avatar'
	end
end
