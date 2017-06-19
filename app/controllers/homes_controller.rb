class HomesController < ApplicationController

  #ログイン前のトップページ
  def top
    if logged_in?
      user = User.find(session[:user_id])
      redirect_to user
    end
  end


end
