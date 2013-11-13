class Post < Crowdblog::Post
  SHORT_DESCRIPTION_SIZE = 500

  def short_description
    description = ""
    paragraphs = body.split("\n")
    paragraphs.cycle do |p|
      description << p << "\n"
      break if description.size > SHORT_DESCRIPTION_SIZE
    end
    @@renderer ||= Redcarpet::Markdown.new(Redcarpet::Render::HTML,
                                           :autolink => true, :space_after_headers => true)
    @@renderer.render(description).html_safe
  end
end
