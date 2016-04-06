# discord_bot

# 機能

[wiki](https://github.com/proshunsuke/discord_bot/wiki/discord_bot%E3%81%AE%E6%A9%9F%E8%83%BD)に記載している。

# 開発

`config/secrets.yml` を作成し、以下のようなフォーマットでdiscordアカウントのメールとパスワードを設定する。

```yml
mail: example@mail.com
password: password
```

bundle installする

```
bundle install
```

botを動作させたい環境に招待する。

以下を実行して動作させる。

```shell
ruby bot.rb
```

# 動作環境

|環境|バージョン|
|:--|:--|
|ruby|2.3.0|
|discordrb|1.8.1|
|activesupport|4.2.6|

# 参考

- [Discord](https://discordapp.com/)
- [discordrb](https://github.com/meew0/discordrb)
