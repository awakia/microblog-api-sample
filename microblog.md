FORMAT: 1A
HOST: http://localhost:3000

# micro_blogs_api

Welcome to the micro blogs API. This API provides access to the micro blogs service.

# Users Data [/users]

## Get User Data List [GET]

ユーザーのリスト一覧を取得

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

## Create User Data [POST]
+ Request UserData (application/json)
    + Attributes
        + name: Naoyoshi Aikawa (string)
        + account_name: awakia (string)
        + email: n.aikawa91@gmail.com (string)
+ Response 201

# ID XXX user data [/users/{id}]

## Get User Data [GET]
+ Parameters
    + id (number) - The ID of the desired user.
+ Response 200 (application/json)
    + Attributes
        + id: 1 (number, required)
        + name: Naoyoshi Aikawa (string)
        + account_name: awakia (string)
        + email: n.aikawa91@gmail.com (string)
        + created_at: `2016-04-07T05:18:02.968Z` (string)
        + updated_at: `2016-04-07T05:18:02.968Z` (string)

## Update User Data [PUT]
+ Parameters
    + id (number) - The ID of the desired user.
+ Request UserData (application/json)
    + Attributes
        + name: Naoyoshi Aikawa (string)
        + account_name: awakia (string)
        + email: n.aikawa91@gmail.com (string)
+ Response 204

## Delete User Data [DELETE]
+ Parameters
    + id (number)
        The ID of the desired user.
+ Response 204

# Users followed data [/followings]

## Get User followed list [GET]
+ Response 200 (application/json)
    + Attributes
        + id: 1 (number, required)
        + user_id: 1 (number)
        + followed_user_id: 2 (number)
        + created_at: `2016-04-07T05:21:17.226Z` (string)
        + updated_at: `2016-04-07T05:21:17.226Z` (string)

## Create User followed [POST]
+ Request FollowedData (application/json)
    + Attributes
        + user_id: 1 (number)
        + followed_user_id: 2 (number)
+ Response 201

# ID XXX followed data [/followings/{id}]

## Get User followed [GET]
+ Parameters
    + id (number) - The ID of the desired user.
+ Response 200 (application/json)
    + Attributes
        + id: 1 (number, required)
        + name: Naoyoshi Aikawa (string)
        + account_name: awakia (string)
        + email: n.aikawa91@gmail.com (string)
        + created_at: `2016-04-07T05:18:02.968Z` (string)
        + updated_at: `2016-04-07T05:18:02.968Z` (string)

## Update User followed [PUT]
+ Parameters
    + id (number) - The ID of the desired user.
+ Request FollowedData (application/json)
    + Attributes
        + user_id: 1 (number)
        + followed_user_id: 2 (number)
+ Response 204

## Delete User followed [DELETE]
  + Parameters
    + id (number)
        The ID of the desired user.
  + Response 204

# Users blog contents [/micro_blogs]

## Get User blog contents List [GET]
+ Response 200 (application/json)
    + Attributes
        + id: 1 (number,required)
        + user_id: 1 (number)
        + body: `Hello World!` (string)
        + created_at: `2016-04-07T05:21:22.809Z` (string)
        + updated_at: `2016-04-07T05:21:22.809Z` (string)

## Create User blog contents [POST]
+ Request BlogData (application/json)
    + Attributes
        + user_id: 1 (number)
        + body: `Hello World!` (string)
+ Response 201

# ID XXX blog contents [/micro_blogs/{id}]

## Get User blog contents [GET]
+ Parameters
    + id (number) - The ID of the desired user.
+ Response 200 (application/json)
    + Attributes
        + id: 1 (number,required)
        + user_id: 1 (number)
        + body: `Hello World!` (string)
        + created_at: `2016-04-07T05:21:22.809Z` (string)
        + updated_at: `2016-04-07T05:21:22.809Z` (string)

## Update User blog contents [PUT]
+ Parameters
    + id (number) - The ID of the desired user.
+ Request BlogData (application/json)
    + Attributes
        + user_id: 1 (number)
        + body: `Hello World!` (string)
+ Response 204

## Delete User blog contents [DELETE]
+ Parameters
    + id (number) - The ID of the desired user.
+ Response 204
