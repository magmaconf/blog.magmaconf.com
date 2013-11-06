class PostsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @posts = Crowdblog::Post.published_and_ordered
  end
end
