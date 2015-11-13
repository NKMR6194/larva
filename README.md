# Larva

Sinatraアプリケーションの自分向けテンプレート

## TODO

- [ ] `.gitignore`から`Gemfile.lock`を除去
- [ ] `Gemfile`にRubyのバージョンを記入
- [ ] Bootstrapを更新
- [ ] jQueryを更新
- [ ] `views/layout.erb`を更新
  - [ ] タイトル
  - [ ] description
  - [ ] CSS, Javascript類のリンクパス
  - [ ] OGP
  - [ ] Twitterカード
  - [ ] favicon
- [ ] migrationファイルを追加
- [ ] modelに追加
- [ ] seedsを書く
- [ ] `unicorn.rb`の設定確認
- [ ] `README.md`の更新
- [ ] 不要な`.gitkeep`を削除

## Usage in Development

異存関係のインストール

```sh
bundle install
```

マイグレーションファイルの作成例

```sh
bundle exec rake db:create_migration NAME=create_entries
```

マイグレーションの実行と初期値の挿入

```sh
bundle exec rake db:migrate
bundle exec rake db:seed
```

サーバーを立ち上げる

```sh
ruby app.rb
```

## Usage in Production

異存関係のインストール

```sh
bundle install --without development
```

マイグレーションファイルの作成例

```sh
bundle exec rake db:create_migration NAME=create_entries
```

マイグレーションの実行と初期値の挿入

```sh
bundle exec rake db:migrate
bundle exec rake db:seed SEED_PATH=db/fixtures/production
```

サーバーを立ち上げる

```sh
./start.sh
```

サーバーを終了する

```sh
./stop.sh
```
