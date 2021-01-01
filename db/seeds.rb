# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#user = User.create!(nickname: 'nickname', email: 'test@test.com', password: 'password', age: 25)
#Article.create!(id: 2, user_id: "4c603640-af5e-46c2-a18b-e63b047d064c", title: "aaa", content: "aaa")

User.create!(
    nickname: 'nickname',
    email: 'test@test.com',
    password: 'password',
    age: 25,
).tap do |u|
    u.articles.create!
    [
        {
            article_id: 0,
            title: 'タイトル',
            content: 'テキストテキストテキストテキスト',
        },
        {
            article_id: 1,
            title: 'aiueo Tips',
            content: 'aiueo Tips Details',
        }
    ]
end