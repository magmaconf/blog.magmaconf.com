class NewsletterSubscriptionsController < ApplicationController
  def create
    NewsletterMailer.add_subscription(params).deliver
    render nothing: true
  end
end
