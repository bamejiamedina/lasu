class WelcomeController < ApplicationController
	before_action :load_posts

	def index
	end

	def load_posts
		@posts = Post.order("created_at DESC").limit(3)
	end
end
