FORMAT: 1A
HOST: http://localhost:3000

# micro_blogs_api

Welcome to the micro blogs API. This API provides access to the micro blogs service.

# Users Data [/users]

User accounts

## Get User Data List [GET]

Get User List

+ Response 200 (application/json)
    + Attributes (array)
        + (UserData1)
        + (UserData2)

## Create User Data [POST]

Register User

+ Request UserData (application/json)
    + Attributes
        + name: Naoyoshi Aikawa (string)
        + account_name: awakia (string)
        + email: n.aikawa91@gmail.com (string)
+ Response 201

# ID XXX user data [/users/{id}]

User account

## Get User Data [GET]

Get User account

+ Parameters
    + id (number) - The ID of the desired user.
+ Response 200 (application/json)
    + Attributes(UserData1)

## Update User Data [PUT]

Update User account

+ Parameters
    + id (number) - The ID of the desired user.
+ Request UserData (application/json)
    + Attributes
        + name: Naoyoshi Aikawa (string)
        + account_name: awakia (string)
        + email: n.aikawa91@gmail.com (string)
+ Response 204

## Delete User Data [DELETE]

Delete User account

+ Parameters
    + id (number)
        The ID of the desired user.
+ Response 204

# Users followed data [/followings]

followings

## Get User followed list [GET]

Get User followed list

+ Response 200 (application/json)
    + Attributes (array)
        + (UserFollowedData1)
        + (UserFollowedData2)

## Create User followed [POST]

Register user followed relation

+ Request FollowedData (application/json)
    + Attributes
        + user_id: 1 (number)
        + followed_user_id: 2 (number)
+ Response 201

# ID XXX followed data [/followings/{id}]

ID XXX followed relation

## Get User followed [GET]

Get User followed relation

+ Parameters
    + id (number) - The ID of the desired user.
+ Response 200 (application/json)
    + Attributes (UserFollowedData1)

## Update User followed [PUT]

Update User followed relation

+ Parameters
    + id (number) - The ID of the desired user.
+ Request FollowedData (application/json)
    + Attributes
        + user_id: 1 (number)
        + followed_user_id: 2 (number)
+ Response 204

## Delete User followed [DELETE]

Delete User followed relation

+ Parameters
    + id (number) - The ID of the desired user.
+ Response 204

# Users blog contents [/micro_blogs]

micro_blogs

## Get User blog contents List [GET]

Get User blog List

+ Response 200 (application/json)
    + Attributes (array)
        + (UserBlogData1)
        + (UserBlogData2)

## Create User blog contents [POST]

Create User blog

+ Request BlogData (application/json)
    + Attributes
        + user_id: 1 (number)
        + body: `Hello World!` (string)
+ Response 201

# ID XXX blog contents [/micro_blogs/{id}]

ID XXX blog data

## Get User blog contents [GET]

Get User blog contents

+ Parameters
    + id (number) - The ID of the desired user.
+ Response 200 (application/json)
    + Attributes (UserBlogData1)

## Update User blog contents [PUT]

Update User blog

+ Parameters
    + id (number) - The ID of the desired user.
+ Request BlogData (application/json)
    + Attributes
        + user_id: 1 (number)
        + body: `Hello World!` (string)
+ Response 204

## Delete User blog contents [DELETE]

Delete User blog

+ Parameters
    + id (number) - The ID of the desired user.
+ Response 204

# Data Structures

## UserData1 (object)

+ id: 1 (number) - Id
+ name: Naoyoshi Aikawa (string) - RealName
+ account_name: awakia (string) - AccountName
+ email: n.aikawa91@gmail.com (string) - Email
+ created_at: `2016-04-07T05:18:02.968Z` (string) - CreatedTime
+ updated_at: `2016-04-07T05:18:02.968Z` (string) - UpdatedTime

## UserData2 (object)

+ id: 2 (number) - Id
+ name: Go Takagi (string) - RealName
+ account_name: go (string) - AccountName
+ email: takagi@shimastripe.com (string) - Email
+ created_at: `2016-04-07T05:18:02.968Z` (string) - CreatedTime
+ updated_at: `2016-04-07T05:18:02.968Z` (string) - UpdatedTime

## UserFollowedData1 (object)
+ id: 1 (number, required)
+ user_id: 1 (number)
+ followed_user_id: 2 (number)
+ created_at: `2016-04-07T05:21:17.226Z` (string)
+ updated_at: `2016-04-07T05:21:17.226Z` (string)

## UserFollowedData2 (object)
+ id: 2 (number, required)
+ user_id: 1 (number)
+ followed_user_id: 3 (number)
+ created_at: `2016-04-07T05:21:17.226Z` (string)
+ updated_at: `2016-04-07T05:21:17.226Z` (string)

## UserBlogData1 (object)
+ id: 1 (number,required)
+ user_id: 1 (number)
+ body: `Hello World!` (string)
+ created_at: `2016-04-07T05:21:22.809Z` (string)
+ updated_at: `2016-04-07T05:21:22.809Z` (string)

## UserBlogData2 (object)
+ id: 2 (number,required)
+ user_id: 2 (number)
+ body: `Hello World!` (string)
+ created_at: `2016-04-07T05:21:22.809Z` (string)
+ updated_at: `2016-04-07T05:21:22.809Z` (string)
