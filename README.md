# README
## the-five-pointed-star-blog

`ruby-3.0.2`

## Development setup:
```
git clone https://github.com/igorson2nd/the-five-pointed-star-blog.git
cd the-five-pointed-star-blog
bundle install
```
Create mysql/mariadb DB, username and password.

Update DB fields in `config/database.yml`
```
rake db:migrate
rake db:seed
rails server
```
Open the app in your browser: http://localhost:3000/

## REST endpoints
```
GET /posts.json
GET /posts/1.json
POST /posts.json
PATCH/PUT /posts/1.json
DELETE /posts/1.json
```
The same for `users`, `comments`, `reactions` intead of `posts`.

## GraphQL

`POST /graphql`

`GET /graphiql # GraphQL IDE`

### GraphQL Examples
```
{
  users {
    username
    posts {
      text
      comments {
        text
        username
        reactions {
          reactionType
          username
        }
      }
    }
  }
}
```
```
mutation {
  userCreate(
    username: "jonathan"
  ) {
    id
  }
}
```
```
mutation{
  postCreate(
    userId: 6
  	text: "graph test post 222 !"
  ) {
    id
    text
  }
}
```
```
mutation{
  postDelete(
    id: 10
  ) {
    id
    text
  }
}
```
```
mutation{
  commentCreate(
    text: "this is graphql comment text !"
    postId: 9
    userId: 6
  ) {
    text
    username
  }
}
```
```
mutation{
  reactionCreate(
    reactionType: "like"
    commentId: 11
    userId: 6
  ) {
    reactionType
    username
  }
}
```
