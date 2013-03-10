module ApplicationHelper
  def markdown(text)
markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML.new(
        :hard_wrap => true, :filter_html => true, :safe_links_only => true),
        :no_intraemphasis => true, :autolink => true)
    return markdown.render(text).html_safe
  end
end
def test_data
  u = User.find(1)
  b = Bill.new
  b.user = u
  b.title = "My new bill"
end
