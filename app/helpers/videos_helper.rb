module VideosHelper
  def embed_video(link, options={})
    options = {width: 560, height: 315}.merge(options)
    if link.include?("facebook")
      "<div class=\"fb-video\" data-href=\"#{link}\" data-allowfullscreen=\"true\" data-width=\"#{options[:width]}\"></div>".html_safe
    else
      link =~ /youtu(?:(?:\.be)|(?:be\.com))\/(?:watch\?v=)?([A-z0-9\-_]+)/
      "<iframe id=\"ytplayer\" type=\"text/html\" width=\"#{options[:width]}\" height=\"#{options[:height]}\" src=\"https://www.youtube.com/embed/#{$1}\" frameborder=\"0\"></iframe>".html_safe
    end
  end
end
