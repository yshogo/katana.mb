class ArticlesController < ApplicationController
  def new
    @article = Article.new(uid: params[:uid])
    @user = User.find(session[:user_id])
  end

  def show
  end

  def edit
    @article = Article.find(params[:id])
    @user = User.find(session[:user_id])
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      #保存成功処理
      redirect_to users_show_path
    else
      #保存失敗処理
      redirect_to new_articles_path(uid: params[1])
    end
  end

  def update
    article = Article.new(article_params)
    if Article.update(article.id,:title => article.title, :article => article.article)
      # 更新に成功したときの処理
      user = User.find(session[:user_id])
      redirect_to user
    else
      render 'edit'
    end
  end

  private
  def article_params
    params.require(:article).permit(:id, :uid, :title, :article)
  end

end
