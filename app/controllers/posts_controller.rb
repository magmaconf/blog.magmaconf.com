class PostsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @posts = ::Post.published_and_ordered.paginate(page: params[:page])
    @posts = ::Post.published_and_ordered.by_category(params[:category]).paginate(page: params[:page]) if params[:category]
    @cat = {news: 'star', judges: 'rotate-left', speakers: 'bullhorn', sponsors: 'check'}
  end

  def show
    @post = ::Post.find_by_permalink(params[:id])
    @cat = {news: 'star', judges: 'rotate-left', speakers: 'bullhorn', sponsors: 'check'}
  end
end
