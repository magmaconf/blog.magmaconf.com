class PostsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @posts = ::Post.published_and_ordered.paginate(page: params[:page])
  end

  def show
    @post = ::Post.find_by_permalink(params[:id])
  end
end
