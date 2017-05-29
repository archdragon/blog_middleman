module CustomHelpers
  module ArticleHelpers
    BLOG_URL = "http://blog.krowinski.com"

    def self.summary(article)
      article.data.custom_summary || article.summary
    end

    def self.full_url(article)
      BLOG_URL + article.url
    end
  end
end
