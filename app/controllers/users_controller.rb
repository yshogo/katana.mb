class UsersController < ApplicationController
  def show

    login
  end

  def edit
    @article = Article.new
  end

  def search

    if isNilAll(params[:start_date][0], params[:end_date], params[:free_word])
      @user = User.find(session[:user_id])
      @article_list = Article.user_id(session[:user_id])
                          .search_between(pearce_date(params[:start_date][0]), pearce_date(params[:end_date][0]))
                          .article_like(params[:free_word])

    else
      login
    end

    render 'users/show'

  end

  private
  def login
    if logged_in?
      @user = User.find(session[:user_id])
      @article_list = Article.where(:uid => @user.uid)
    else
      redirect_to root_path
    end

  end

  private
  def pearce_date(date)

    if date.present?
      Time.zone.parse(date)
    end
  end

  def isNilAll(start_date, end_date, free_word)

    if start_date.present? && end_date.present? && free_word.present?
      printf "成功"
      true
    else
      printf "失敗"
      false
    end
  end
end
