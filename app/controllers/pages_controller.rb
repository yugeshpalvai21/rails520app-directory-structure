class PagesController < ApplicationController
  def home
    @article_count = Article.count
  end
end
