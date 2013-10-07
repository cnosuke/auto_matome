# coding: utf-8
require "~/script/ruby/rails_app/auto_matome/db/seeds/development/api.rb"

news = News.all

news.each do |foo|
  thread = Matome::Thread.new(foo["url"])
  1.upto(thread.res_count) do |i|
    Res.create(news_id: foo,
               number: i,
               name: foo.res(i)["name"],
               date: foo.res(i)["date"],
               text: foo.res(i)["text"]
             )
  end
end

