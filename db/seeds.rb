# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
    nickname: 'honda',
    email: 'keisuke.honda@au.com',
    password: 'm3bCHIrnov',
    age: 25,
)

User.create!(
    nickname: 'WaniHackase',
    email: 'waniwani@waniwani.ac.jp',
    password: 'FgkmcSFk2i',
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

