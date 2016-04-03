# discord_bot

# 機能

## おみくじ

`おみくじ` というメッセージを送ると、 `大吉, 中吉, 小吉, 吉, 半吉, 末吉, 末小吉, 凶, 小凶, 半凶, 末凶, 大凶` の中からランダムで返す

# 開発

`config/secrets.yml` を作成し、以下のようなフォーマットでdiscordアカウントのメールとパスワードを設定する。

```yml
mail: example@mail.com
password: password
```

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

# 参考

- [Discord](https://discordapp.com/)
- [discordrb](https://github.com/meew0/discordrb)
