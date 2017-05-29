require_relative 'custom_helpers/article_helpers'

module CustomHelpers
  def inline_svg(name)
    root = Middleman::Application.root
    file_path = "#{root}/source/images/icons/#{name}.svg"
    if File.exists?(file_path)
      File.read(file_path)
    else
      "<span class='icon-error'>Icon #{name} not found</span>"
    end
  end
end
