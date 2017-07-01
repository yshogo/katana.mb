class UsersController < ApplicationController
  def show

    if logged_in?
      @user = User.find(session[:user_id])
      @article_list = Article.where(:uid => @user.uid)
    else
      redirect_to root_path
    end

  end

  def edit
    @article = Article.new
  end

  def searchArticle

  end
end
