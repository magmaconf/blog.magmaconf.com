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
      ]
    ]
  end

  def links
  end
end