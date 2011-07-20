require 'machinist/active_record'

# Add your blueprints here.
#
# e.g.
#   Post.blueprint do
#     title { "Post #{sn}" }
#     body  { "Lorem ipsum..." }
#   end

Restaurant.blueprint do
  name { "Eat at Joe's"}
end

User.blueprint do
  email {"user-#{sn}@example.com"}
end
