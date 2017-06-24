class UsersController < ApplicationController
  def show
    @user = User.find(session[:user_id])
    @article_list = Article.where(:uid => @user.uid)
  end

  def edit
    @article = Article.new
  end
end
