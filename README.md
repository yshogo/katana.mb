Railsの勉強がてらMarkdownでかけるメモアプリを作成した話

作成しました。

サイトは下記です。
https://mysterious-wildwood-63267.herokuapp.com/


## 主な機能

- ログイン
  * ログインはツイッターアカウントでログインできるようにしました
  * ![ログイン.gif](https://qiita-image-store.s3.amazonaws.com/0/139360/4cbe3e75-0524-a60c-6560-f587341424d3.gif "ログイン.gif")

  * 


- 投稿、編集
  * Markdownを書くと右側にパースした結果が表示されていきます。
  * ![投稿.gif](https://qiita-image-store.s3.amazonaws.com/0/139360/12f9d4da-25c0-553f-f888-bc399a1aa07c.gif "投稿.gif")

  * 編集も可能です
  * ![編集する.gif](https://qiita-image-store.s3.amazonaws.com/0/139360/b20d5005-f6e9-06f4-0bdd-3f077b841ca8.gif "編集する.gif")


- 検索
  * ワード検索、日付検索、することが可能です。

## 使った技術

- 言語：Ruby
- フレームワーク：Ruby on Rails
- marked.js ( https://github.com/chjj/marked )
- Materialize ( http://materializecss.com/ )

## なぜ作ったか

Ruby on Railsがやりたかったからです。
これが一番の理由かもしれません。


他には

* 自分はアプリ開発をメインで行っていますがこの機会にWebアプリケーションを作成してみていつもと違った視点を学びたかった
* オールランダーな人間になれると思ったから(アプリ開発、サーバーサイド、APIの作成、Webアプリケーションをやったことがあるという経験)

上記のような理由でやってみました。

## 現在は

このWebアプリケーションを作ったという経験ができて満足してしまいました。笑
バグがたくさん内在しています笑
でも、あくまで「経験すること」を意識したのでもうこれでいいかなと思います。

また、今はiPhoneアプリを開発しています。
だいぶ完成に近づいてきていてもうすぐリリースかなというところです。


## よければ
ソースコードは下記におきましたのでよければどうぞ
https://github.com/yshogo/katana.mb

また、ツイッターもやっているのでよければフォローお願い致します。
https://twitter.com/yshogo87

