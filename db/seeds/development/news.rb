# coding: utf-8
require "~/script/ruby/rails_app/auto_matome/db/seeds/development/api.rb"

ikioi = Matome::Ikioi.new

1.upto(5) do |i|
  data = ikioi.details(i)
  News.create(title: ikioi.details(i)["title"],
              url: ikioi.datfile(i)
              )
end
