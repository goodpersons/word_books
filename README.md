# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

*查看单词所有单词本接口

url: http://127.0.0.1:3000/api/v1/books
path: /api/v1/books
methed: get

*查看指定数目单词列表

usr: http://127.0.0.1:3000/api/v1/words?limit=10&offset=2
path: /api/v1/words
methed: get
parmas: limit(返回条数) offset（间隔条数）

*查看所有单词列表
usr: http://127.0.0.1:3000/api/v1/words
path: /api/v1/words
methed: get

*查看单词详情
usr: http://127.0.0.1:3000/api/v1/words/1
path: /api/v1/word/id
methed: get
