class PostsController < ApplicationController
  before_action :require_login

  def index
    posts = current_user.posts
    render json: { posts: posts }, status: :ok
  end

  private

  def require_login
    unless current_user
      render json: { message: "You must be logged in to see the posts" }, status: :unauthorized
    end
  end
end
