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

  def search
    @user = User.find(session[:user_id])
    @article_list = Article.user_id(session[:user_id]).search_between(parce_date(params[:start_date][0]),parce_date(params[:end_date][0])).article_like(params[:free_word])
    render 'users/show'
  end

  private
  def parce_date(date)
    Time.zone.parse(date)
  end
end
