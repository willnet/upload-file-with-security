# Upload file with security

shrineを使ったサンプルRailsアプリです

## セットアップ方法

mac前提

```
brew install libvips
./bin/setup
```

## 構成

- scaffoldでUserとSecretモデルを作っています
  - それぞれ http://localhost:3000/users , http://localhost:3000/secrets でCRUDできます
- それぞれShrineでファイルアップロードできるようにしています
- Userは普通にon the flyでのファイル変換
- Secretもon the flyのファイル変換ですが、以下の点で異なります
  - SecureDerivationsController#showでアクセス制限をする余地を作っています
  - ファイルのパスにモデル名とIDを含めているので、そこから「アップロードしたファイルにアクセスする権限があるか否か」をチェック可能
  - 要求された形式のファイルがストレージにない場合は、変換後ストレージに保存し次回はそれを使用する形式になっています
    - CDNをつかわない前提
