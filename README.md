# README

**このサービスは、プロ野球スピリッツAのルーム戦マッチングアプリです。**
<br>

```

このような方に、このアプリを使って欲しい。
①自身のTwitterを使ってルームIDを投稿したくない方。
②ルーム戦で何かしらの条件が欲しい方。（イニング数・スピードなど）
③プロ野球スピリッツAが好きな方。
④もっと上手くなりたい方。

```


<br>

皆さんは、プロ野球スピリッツAというスマホゲームはご存知ですか？<br>
性別問わず、楽しむことができるリアル野球ゲームです。<br>
育成・試合・選手集め、野球好きは必ずハマるゲームです。
<br>
<br>
そのゲーム内に、「ルーム戦」という遊び方があります。<br>
自分の実力や選手の使用感を確認する時に使われる、勝敗よりも練習に重きを置いている遊び方です。
<br>
<br>
普段はあまり使われないのですが、定期的に行われる大会前になると,ルーム戦で試合慣れをし始める人が急増します。<br>
自身のTwitterで募集をかけたり、有名YouTuberが試合慣れするために生放送したりとルーム戦の需要は高まります。
<br>
<br>
しかしながら、有名YouTuberとマッチングすることは可能性が限りなく低く<br>
基本的に自分からルームIDを発行しないとルーム戦はしにくい環境です。<br>
そこで、少しでもルーム戦だけのプラットフォームを作りました。
<br>
<br>
<br>

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
