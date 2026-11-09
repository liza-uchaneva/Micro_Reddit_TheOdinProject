# Micro-Reddit

The data layer for a tiny Reddit clone, built in Rails as a models-and-associations exercise from the [The Odin Project](https://www.theodinproject.com/) curriculum. There are no views: everything is explored in the Rails console.

## Data model

```
User ──< Post ──< Comment
  └──────────────<┘
```

- **User**: username required, minimum 4 characters
- **Post**: belongs to a user; title required, max 256 characters
- **Comment**: belongs to a user and a post; body required, max 512 characters
- `dependent: :destroy` cascades deletes from users and posts

## Try it

```bash
bundle install
bin/rails db:migrate
bin/rails console
```

```ruby
u = User.create!(username: "liza")
p = u.posts.create!(title: "Hello", body: "First post")
p.comments.create!(user: u, body: "Nice!")
```
