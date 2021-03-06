# coding: utf-8
require "~/script/ruby/rails_app/auto_matome/db/seeds/development/api.rb"

board = Board.all

board.each do |thread_data|
  res = Matome::Thread.new(thread_data["url"])
  1.upto(res.res_count) do |i|
    Reply.create(news_id: thread_data,
               number: i,
               name: thread_data.res(i)["name"],
               date: thread_data.res(i)["date"],
               text: thread_data.res(i)["text"]
             )
  end
end

