# README

このアプリは、プロ野球スピリッツaのルーム戦マッチングアプリです。
<br>
皆さんは、プロ野球スピリッツaというスマホゲームはご存知ですか？
性別問わず、楽しむことができるリアル野球ゲームです。
育成・試合・選手集め、ハマる人はどっぷりハマります。
<br>
そのゲーム内に、「ルーム戦」という遊び方があります。
自分の実力や選手の使用感を確認する時に使われています。
<br>
大会前になると一変,ルーム戦で試合慣れをし始める人が急増します。
自身のTwitterで募集をかけたり、有名YouTuberが試合慣れするために生放送したりとルーム戦の需要は高まります。

しかしながら、有名YouTuberとマッチングすることは可能性が限りなく低く
基本的に自分からルームIDを発行しないとルーム戦はしにくい環境です。

```

このような方に、このアプリを使って欲しい。
①自身のTwitterを使ってルームIDを投稿したくない方。
②ルーム戦で何かしらの条件が欲しい方。（イニング数・スピード）
③プロ野球スピリッツaが好きな方。
④もっと上手くなりたい方。

```



## users テーブル

| Column                | Type     | Options     |
| --------------------- | -------- | ----------- |
| user_name             | string   | null: false |
| email                 | string   | null: false |
| encrypted_password    | string   | null: false |

### Association

- has_many :matches


## matches テーブル

| Column                 | Type        | Options                        |
| ---------------------- | ----------- | ------------------------------ |
| room_id                | integer     | null: false                    |
| inning                 | text　　     |                                |
| speed                  | text        |                                |
| retire                 | text        |                                |
| spirits                | text        |                                |
| user                   | references  | null: false, foreign_key: true |

### Association

- belongs_to :user
