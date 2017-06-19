class ArticlesController < ApplicationController
  def new
    @article = Article.new(uid:params[:uid])
  end

  def show

  end

  def edit
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      #保存成功処理
      redirect_to users_show_path
    else
      #保存失敗処理
      redirect_to new_articles_path(uid:params[1])
    end
  end

  private
  def article_params
    params.require(:article).permit(:uid, :title, :article)
  end

end
