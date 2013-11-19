class SectionsController < ApplicationController
  def venue
  end

  def sponsors
    @sponsors = [
      [
        url: 'http://github.com',
        img: 'github.svg'
      ],
      [
        url: 'http://github.com',
        img: 'github.svg'
      ],
      [
        url: 'http://github.com',
        img: 'github.svg'
      ],
      [
        url: 'http://github.com',
        img: 'github.svg'
      ]
    ]
  end

  def links
    @links = [
      [
        url: 'http://github.com',
        text: 'Github'
      ],
      [
        url: 'http://github.com',
        text: 'Github'
      ],
      [
        url: 'http://github.com',
        text: 'Github'
      ],
      [
        url: 'http://github.com',
        text: 'Github'
      ]
    ]
  end
end
