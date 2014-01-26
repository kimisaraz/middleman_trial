xml.instruct!
xml.feed "xmlns" => "http://www.w3.org/2005/Atom" do
  site_url = "http://kimisaraz.github.io/"
  xml.title "Middleman Trial"
  xml.subtitle "Building a blog with Middleman"
  xml.id File.join(site_url, config.http_prefix, blog.options.prefix.to_s)
  xml.link "href" => File.join(site_url, config.http_prefix, blog.options.prefix.to_s)
  xml.link "href" => File.join(site_url, config.http_prefix, current_page.path), "rel" => "self"
  xml.updated(blog.articles.first.date.to_time.iso8601) unless blog.articles.empty?
  xml.author { xml.name "Kimi SARAZU" }

  blog.articles[0..5].each do |article|
    xml.entry do
      xml.title article.title
      xml.link "rel" => "alternate", "href" => File.join(site_url, article.url)
      xml.id File.join(site_url, article.url)
      xml.published article.date.to_time.iso8601
      xml.updated File.mtime(article.source_file).iso8601
      xml.author { xml.name "Kimi SARAZU" }
      # xml.summary article.summary, "type" => "html"
      xml.content article.body, "type" => "html"
    end
  end
end
