class SectionsController < ApplicationController
  def venue
  end

  def sponsors
    @sponsors = [
      [
        url: 'http://crowdint.com',
        img: 'crowd-sponsor.svg'
      ]
    ]
  end

  def links
    @links = [
      [
        url: 'http://crowdint.com',
        text: 'Crowd Interactive'
      ]
    ]
  end
end
