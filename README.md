# README

# Friencher

## 概要
タンデムパートナー（母国語が異なる人がお互いの母国語を教え合うパートナー）を探すアプリ。
自分の母国語と学びたい言語、住んでいる都市などからパートナーをマッチングする。

## コンセプト
無料で言語を学ぶことができる

## バージョン
Ruby 2.5.1
Rails 5.2.1

## 機能一覧
* [ ] ログイン機能
* [ ] ユーザー登録機能
  - [ ] 名前、パスワード、住んでいる都市（最寄り駅？）は必須
  - [ ] メールアドレスまたはFacebookのどちらか必須
  - [ ] アイコン画像、自己紹介は任意
* [ ] ユーザー情報再設定機能
* [ ] マッチしたユーザー一覧表示機能
  - [ ] ユーザーの学びたい言語から検索
  - [ ] 住んでいる地域が近い人から順に表示
  - [ ] ページネーション
  - [ ] 選んだユーザーをフォローしたりチャットを行うことができる
* [ ] 1対1チャット機能
* [ ] （グールプチャット機能）
* [ ] ブログ一覧表示機能
  - [ ] コメント数を表示
  - [ ] お気に入り数を表示
* [ ] ブログ投稿機能
  - [ ] タイトルと記事内容は必須
* [ ] ブログ編集機能
* [ ] ブログ削除機能
  - [ ] ブログ編集とブログ削除は投稿者のみ実行可能
* [ ] ブログお気に入り機能
  - [ ] ブログのお気に入りについては1つのブログに対して1人1回しかできない
  - [ ] 自分自身のブログにはお気に入りできない
* [ ] コメント投稿機能
* [ ] コメント削除機能
* [ ] コメント編集機能
  - [ ] コメント編集とコメント削除はコメントした本人のみ可能
* [ ] コメント機能とお気に入り機能についてはページ遷移なしで実行できる

## カタログ設計
https://docs.google.com/spreadsheets/d/1_L2czBT1xDqVI9etWGGe1Qbz830mHaQLSFm5TJspKJE/edit#gid=1177389026

## テーブル定義
https://docs.google.com/spreadsheets/d/1SHdKbtBGqrs-jlmY0fTmVNNv4nFbUSC6O5wuzzN4Jg8/edit#gid=1137983492

## 画面遷移図
https://docs.google.com/spreadsheets/d/11IiLegcWmLm3mRGTRd-mbTZh7JK_8txU3Ztt9czJW2s/edit#gid=0

## 画面ワイヤーフレーム
https://docs.google.com/spreadsheets/d/1onPPXypDxLDvlz8l0CqJTfEX6WvPUNboiUxI0sqluTw/edit#gid=0

## 使用予定Gem
* carrierwave
* mini_magick
* devise
* action cable
