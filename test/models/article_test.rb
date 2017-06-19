require 'test_helper'

class ArticleTest < ActiveSupport::TestCase

  def setup
    @article = Article.new(titile:"てすと", article:"# Hello")
  end

  test "should title not space" do
    get new_articles_path
    @article.title = "   "
    assert_not @article.valid?
  end
end
