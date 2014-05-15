class PreviewsController < ApplicationController
  def show
    @post = ::Post.find(params[:id])
    @post.published_at = Time.now
    @cat = {news: 'star', judges: 'legal', speakers: 'bullhorn', sponsors: 'flag'}

    render template: 'posts/show'
  end
end
