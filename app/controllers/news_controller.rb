class NewsController < ApplicationController
  def index
    @thread = News.all.limit(10)
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
