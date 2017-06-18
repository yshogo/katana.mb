class UsersController < ApplicationController
  def show
    @user = User.find(session[:user_id])
  end

  def edit
    @article = Article.new
  end
end
