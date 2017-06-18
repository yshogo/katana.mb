class ArticlesController < ApplicationController
  def new
    @article = Article.new(uid:params[1])
  end

  def show
  end

  def edit
  end

end
