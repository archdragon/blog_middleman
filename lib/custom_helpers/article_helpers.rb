module CustomHelpers
  module ArticleHelpers
    def self.summary(article)
      article.data.custom_summary || article.summary
    end
  end
end
