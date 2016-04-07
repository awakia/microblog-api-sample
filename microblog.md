FORMAT: 1A
# 1 Get User Data List [GET /users]
ユーザーのリスト一覧を取得
  + Response 200 (application/json)
    + Attribute
        + id: 1 (number) - Id
        + name: Naoyoshi Aikawa (string) - (make Discription)RealName
        + account_name: awakia (string) - AccountName
        + email: n.aikawa91@gmail.com (string) - Email
        + created_at: `2016-04-07T05:18:02.968Z` (string) - CreatedTime
        + updated_at: `2016-04-07T05:18:02.968Z` (string) - UpdatedTime

# 2 Get User Data List [GET /users]
この書き方だと複数のAttributeを並べられるかわりにSchemaが自動生成されない。
(上はされるけど複数並べる記法が調べても見つからない)
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

# Create User Data [POST /users]
  + Request (application/json)
    + Attribute
      + name: Naoyoshi Aikawa (string)
      + account_name: awakia (string)
      + email: n.aikawa91@gmail.com (string)

  + Response 201 (application/json)
      + Headers
        Location: /users/1
      + Attribute
        + id: 1 (number)
        + name: Naoyoshi Aikawa (string)

# Get User Data [GET /users/{id}]
  + Parameters
    + id (number)
        The ID of the desired user.
  + Response 200 (application/json)
    + Attribute
        + id: 1 (number, required)
        + name: Naoyoshi Aikawa (string)
        + account_name: awakia (string)
        + email: n.aikawa91@gmail.com (string)
        + created_at: `2016-04-07T05:18:02.968Z` (string)
        + updated_at: `2016-04-07T05:18:02.968Z` (string)

# Get User followed list [GET /followings/{id}]
  + Parameters
    + id (number)
        The ID of the desired user.
  + Response 200 (application/json)
    + Attribute
        + id: 1 (number, required)
        + user_id: 1 (number)
        + followed_user_id: 2 (number)
        + created_at: `2016-04-07T05:21:17.226Z` (string)
        + updated_at: `2016-04-07T05:21:17.226Z` (string)

# Get User1 blog contents [GET /micro_blogs/{id}]
  + Parameters
    + id (number)
        The ID of the desired user.
  + Response 200 (application/json)
    + Attribute
        + id: 1 (number,required)
        + user_id: 1 (number)
        + body: `Hello World!` (string)
        + created_at: `2016-04-07T05:21:22.809Z` (string)
        + updated_at: `2016-04-07T05:21:22.809Z` (string)
