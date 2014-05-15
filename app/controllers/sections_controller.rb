class SectionsController < ApplicationController
  def venue
  end

  def sponsors
  end

  def links
    @links = [
      [
        url: 'http://crowdint.com',
        text: 'Crowd Interactive'
      ],
      [
        url: 'http://store.crowdint.com',
        text: 'Crowd Store'
      ],
      [
        url: 'http://magmaconf.com',
        text: 'MagmaConf 2014'
      ]
    ]
  end
end
