module ApplicationHelper
  def urls_to_images(s)
    #s.gsub! /\s(http:\/\/.*?\.(png|jpg|jpeg))\s/, '<img src="\1"/>'
    s.gsub! /\s(http:\/\/.*?)\s/, '<img src="\0"/>'
    s.html_safe
  end

=begin
  def urls_to_links(s)
    s.gsub! /\s(http:\/\/.*?)\s/,
            '<a href="\1">\1</a>'
  end
=end
end
