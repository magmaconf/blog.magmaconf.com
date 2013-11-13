module SocialHelper
  def facebook_share(post)
    url = "http://www.facebook.com/sharer/sharer.php?s=100&p[url]=#{social_share_url(post)}&p[images][0]=&p[title]=#{social_share_title(post)}&p[summary]="
    link_to 'facebook', url, target: "_BLANK"
  end

  def twitter_share(post)
    url = "http://twitter.com/home?status=#{social_share_title(post)} #{social_share_url(post)} via @crowdint"
    link_to 'twitter', url, target: "_BLANK"
  end

  def gplus_share(post)
    url = "https://plus.google.com/share?url=#{social_share_url(post)}"
    link_to 'gplus', url, target: "_BLANK"
  end

  def social_share_url(post)
    Rack::Utils.escape(post_url(*post.url_params))
  end

  def social_share_title(post)
    Rack::Utils.escape(post.title)
  end
end

