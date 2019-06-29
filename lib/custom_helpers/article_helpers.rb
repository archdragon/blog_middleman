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

    def self.main_image_link(article)
      tag_name = ArticleHelpers.main_tag_name(article)

      return "/images/headings/#{tag_name}.jpg" unless article.data.image

      article.data.image
    end

    def self.main_tag_link(article)
      name = ArticleHelpers.main_tag_name(article)

      "<a class='item tag-name' href='/tags/#{name}.html'>
        #{name}
      </a>"
    end

    def self.main_tag_name(article)
      normalized_name = article.tags.first

      return "" unless normalized_name

      normalized_name = normalized_name.downcase
    end
  end
end
