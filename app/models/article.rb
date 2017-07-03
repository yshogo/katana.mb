class Article < ApplicationRecord

  validates :title, presence:true

  #ログインしているユーザーに紐づく記事を取得
  scope :user_id, -> (id){
    where(uid: id) if id.present?
  }

  #記事の部分一致
  scope :article_like, -> (search_word) {
     where('article like ?', "%#{search_word}%")
  }

  #日付検索
  scope :search_between, -> (from, to) {
    if from.present? && to.present?
      where(updated_at: from..to)
    elsif from.present?
      where('updated_at >= ?', from)
    else
      where('updated_at <= ?', to)
    end
  }


end