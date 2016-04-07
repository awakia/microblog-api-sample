FORMAT: 1A
# Get User Data List [GET /users]
+ Response 200 (application/json)
    + Attribute
        + id: 1 (number)
        + name: Naoyoshi Aikawa (string)
        + account_name: awakia (string)
        + email: n.aikawa91@gmail.com (string)
        + created_at: `2016-04-07T05:18:02.968Z` (string)
        + updated_at: `2016-04-07T05:18:02.968Z` (string)

# Post User Data [POST /users]
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

# Get User1 Data [GET /users/1]
+ Response 200 (application/json)
    + Attribute
        + id: 1 (number)
        + name: Naoyoshi Aikawa (string)
        + account_name: awakia (string)
        + email: n.aikawa91@gmail.com (string)
        + created_at: `2016-04-07T05:18:02.968Z` (string)
        + updated_at: `2016-04-07T05:18:02.968Z` (string)

# Get User1 followed list [GET /followings/1]
+ Response 200 (application/json)
    + Attribute
        + id: 1 (number)
        + user_id: 1 (number)
        + followed_user_id: 2 (number)
        + created_at: `2016-04-07T05:21:17.226Z` (string)
        + updated_at: `2016-04-07T05:21:17.226Z` (string)

# Get User1 blog contents [GET /micro_blogs/1]
+ Response 200 (application/json)
    + Attribute
        + id: 1 (number)
        + user_id: 1 (number)
        + body: `Hello World!` (string)
        + created_at: `2016-04-07T05:21:22.809Z` (string)
        + updated_at: `2016-04-07T05:21:22.809Z` (string)
