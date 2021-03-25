class PagesController < ApplicationController
  skip_before_action :root_redirection
  
  def home
    @article_count = Article.count
  end
end
