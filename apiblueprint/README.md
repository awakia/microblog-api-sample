# 雑記メモ

## apiblueprintの記法、お作法を確認したい時

- referenceの[API Blueprint Specification.md](https://github.com/apiaryio/api-blueprint/blob/master/API%20Blueprint%20Specification.md)参照。サンプルコードばっかり見てて仕様書を見落としてた。

## Blueprint Section

- `#` と `-` で区別。`-`は`+`や`*`も使える。`#`の次に`##`使う場合はインデントいらないけど`-`はインデントが必要。nest関係をきちんとインデントで示さないとエラー。

### Example: Nested header-defined section

```
# <section definition>
 ...
## <nested section definition>
 ...
```

### Example: Nested list-defined section

```
+ <section definition>

     ...

    + <nested section definition>

     ...
```

## Named Section

`# XXX [POST]`や+ YYY (text/plain)`

## Asset Section

ここら辺はmarkdownの記法の問題な気がするけど一応

```
+ <keyword>

        {
            "message": "Hello"
        }
```

`{`を8spaces分インデント入れる。

### Fenced code blocks

```
+ <keyword>

    ```
    {
        "message": "Hello"
    }
    ```
```

コードブロックを明示している場合は4spaces分インデントでOK。

## Attributes section

```
[
  {
    "id": 1,
    "name": "Naoyoshi Aikawa",
    "account_name": "awakia",
    "email": "n.aikawa91@gmail.com",
    "created_at": "2016-04-07T05:18:02.968Z",
    "updated_at": "2016-04-07T05:18:02.968Z"
  },
  {
    "id": 2,
    "name": "Go Takagi",
    "account_name": "go",
    "email": "takagi@shimastripe.com",
    "created_at": "2016-04-07T05:18:02.968Z",
    "updated_at": "2016-04-07T05:18:02.968Z"
  }
]
```

この形式のjsonを書き出せるようにしたい時、従来のAttributesを用いた書き方ができず、仕方なく以下のような形式を取っていた。

```
+ Response 200 (application/json)

        [
          {
            "id": 1,
            "name": "Naoyoshi Aikawa",
            "account_name": "awakia",
            "email": "n.aikawa91@gmail.com",
            "created_at": "2016-04-07T05:18:02.968Z",
            "updated_at": "2016-04-07T05:18:02.968Z"
          },
          {
            "id": 2,
            "name": "Go Takagi",
            "account_name": "go",
            "email": "hoge@example.com",
            "created_at": "2016-04-07T05:18:02.968Z",
            "updated_at": "2016-04-07T05:18:02.968Z"
          }
        ]
```

でも他の書き方は下のような形を取っているので記法が揃っていなくて気持ち悪い。(しかも下で書くとjson schemaを自動で書き出してくれるので下の記法を採用したい。)

```
+ Response 200 (application/json)
    + Attributes
        + id: 1 (number, required)
        + name: Naoyoshi Aikawa (string)
        + account_name: awakia (string)
        + email: n.aikawa91@gmail.com (string)
        + created_at: `2016-04-07T05:18:02.968Z` (string)
        + updated_at: `2016-04-07T05:18:02.968Z` (string)
```

documentを漁った結果、Attributesはこの状態で明示的に(object)の型が指定されていたのでこれを(array)に変更して塊を(object)でくくった。

```
+ Response 200 (application/json)
    + Attributes (array)
        + (object)
            + id: 1 (number) - Id
            + name: Naoyoshi Aikawa (string) - RealName
            + account_name: awakia (string) - AccountName
            + email: n.aikawa91@gmail.com (string) - Email
            + created_at: `2016-04-07T05:18:02.968Z` (string) - CreatedTime
            + updated_at: `2016-04-07T05:18:02.968Z` (string) - UpdatedTime
        + (object)
            + id: 2 (number) - Id
            + name: Go Takagi (string) - RealName
            + account_name: go (string) - AccountName
            + email: takagi@shimastripe.com (string) - Email
            + created_at: `2016-04-07T05:18:02.968Z` (string) - CreatedTime
            + updated_at: `2016-04-07T05:18:02.968Z` (string) - UpdatedTime
```

結果、無事に記法を統一することができた。


## Payload Section

Headers, Attributes, Body, Schema。これらは4つが首尾一貫してまとまっていないとおかしくなってしまうので同時に衝突するものをつけたら優先順位がついてる。

1. message-bodyのschema
    1. Schema section
    2. Attributes section
    3. Body section
2. message-bodyのexample
    1. Body section
    2. Attributes section
    3. Schema section

## API name & overview section

`# ~~`でタイトルになる。

## Resource group section
`# ~~ [/users]`などを最後につけるとグループのまとまりになる。
以降の

```
## Get ~~ [GET]

## Delete ~~ [DELETE]
```

と書くと

```
## Get ~~ [GET /users]

## Delete ~~ [DELETE /users]
```
と判断される。

## Multiple Transaction Example

```
# Resource [/resource]
## Create Resource [POST]

+ request A

        ...

+ response 200

        ...

+ request B

        ...

+ response 200

        ...

+ response 500

        ...

+ request C

        ...

+ request D

        ...

+ response 200

        ...
```

こうすると一つのactionが与えられた時に以下の3つのtransactionが起こりうる。

1. 1st example: request A, response 200
2. 2nd example: request B, responses 200 and 500
3. 3rd example: requests C and D, response 200

## URI parameters section

parameterの条件に応じた設定ができる

```
# GET /posts/{id}
```

```
+ Parameters
    + id(number) - Id of a post.
```

基本形

```
+ Parameters
    + id: `1001` (number, required) - Id of a post.
```

`1001`で例が書ける。requiredで必須。

```
+ Parameters
    + id: `1001` (number, optional) - Id of a post.
        + Default: `20`
```

optionalに設定した上でDefaultに値を入れるとidに値がなかった時にDefaultが入る。

```
+ Parameters
    + id (enum[string])

        Id of a Post

        + Members
            + `A`
            + `B`
            + `C`
```

列挙型。入力されるべきものをMemberに定義しておく。idがstring型だった場合はenum[string]型になる。

## Headers section

HTTP message-headerに設定を指定することができる。

```
+ Headers

        Accept-Charset: utf-8
        Connection: keep-alive
        Content-Type: multipart/form-data, boundary=AaB03x
```

## Data Structures section

データ構造の部分を外に出してData Structures以下に定義することで変数化できる。各APIごとのみの変数にすることもネストで可能

```
# User [/user]

+ Attributes (Author)

# Data Structures

## Author (object)

+ name: John
+ email: john@appleseed.com
```

## apiblueprintの構造 (referenceより)

- [0-1]Metadata Sections
- [0-1]API Name & overview section
- [0+]Resource sections
  - [0-1]URI Parameters section
  - [0-1]Attributes section
  - [0-1]Model section
    - [0-1]Headers section
    - [0-1]Attributes section
    - [0-1]Body section
    - [0-1]Schema section
  - [1+]Action sections
    - [0-1]Relation section
    - [0-1]URI Parameters section
    - [0-1]Attributes section
    - [0+]Request sections
      - [0-1]Headers section
      - [0-1]Attributes section
      - [0-1]Body section
      - [0-1]Schema section
    - [1+]Response sections
      - [0-1]Headers section
      - [0-1]Attributes section
      - [0-1]Body section
      - [0-1]Schema section
- [0+]Resource Group sections
  - [0+]Resource sections (see above)
- [0+]Data Structures section

各section左の数しか持てない。

## dreddについて

- 初めて使う場合は`dredd init`して設定を整備,dredd.ymlとcircle.ymlができる。
- できたら`dredd`と打てばいいが`dredd --server-wait 10`としないといけなくて詰まった。デフォルトは3秒になっていてサーバーの立ち上がりに比べて早すぎて接続できない現象が起きた。

# 気になっていること

## JSON schemaを用いてテストするのがいい？

JSON Schemaで型判定してくれるのをテストとするならapiblueprintが自動で生成してくれるから相性がいい。dreddがどうテストするのかまだちゃんとわかってないけど。
