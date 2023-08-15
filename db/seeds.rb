# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


book1 = Book.create(name: "English params part 1")
book2 = Book.create(name: "English params part 2")
100.times do |i|
  word = Word.create(name: "hello #{i}", say: '/hello/', explain: "你好  #{i}" ,example:"hello word  #{i}")
  UseWord.create(book:book1, word:word)
end

100.times do |i|
  word = Word.create(name: "hi #{i}", say: '/hi/', explain: "你好  #{i}" ,example:"hi #{i}")
  UseWord.create(book:book2, word:word)
end

20.times do |i|
  same_word = Word.create(name: "same #{i}", say: '/same/', explain: "相同的单词  #{i}" ,example:"same #{i}")
  UseWord.create(book:book1, word:same_word)
  UseWord.create(book:book2, word:same_word)
end
