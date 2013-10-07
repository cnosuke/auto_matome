# coding: utf-8
require "~/script/ruby/rails_app/auto_matome/db/seeds/development/api.rb"

board = Board.all

board.each do |thread_data|
  begin
    puts thread_data["url"]
    res = News::Thread.new(thread_data["url"])
  rescue => error
    puts error
    next
  end
  puts res.res_count
  1.upto(res.res_count) do |i|
    puts "uptoの中"
    Reply.create(board_id: thread_data,
                 number: i,
                 name: thread_data.res(i)["name"],
                 date: thread_data.res(i)["date"],
                 text: thread_data.res(i)["text"]
                 )
  end
  
end

