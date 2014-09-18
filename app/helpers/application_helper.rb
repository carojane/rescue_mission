module ApplicationHelper
  def markdown(text)
    options = { hard_wrap:          true,
                escape_html:        true,
                prettify:           true,
                no_styles:          true }

    extensions = {
                autolink:           true,
                superscript:        true,
                no_intra_emphasis:  true,
                fenced_code_blocks: true }


    renderer = Redcarpet::Render::HTML.new(options)
    markdown = Redcarpet::Markdown.new(renderer, extensions)

    markdown.render(text).html_safe
  end
end
