module CustomHelpers
  module ArticleHelpers
    BLOG_URL = "http://blog.krowinski.com"

    def self.summary(article)
      article.data.custom_summary || article.summary
    end

    def self.full_url(article)
      BLOG_URL + article.url
    end

    def self.page_id(article)
      raise "No id provided for #{article.url}" unless article.data.id
      article.data.id
    end

    def self.main_tag_link(article)
      normalized_name = article.tags.first
      normalized_name = normalized_name ? normalized_name.downcase : ""

      "<a class='item tag-name' href='/tags/#{normalized_name}.html'>
        #{normalized_name}
      </a>"
    end
  end
end
