class PagesController < ApplicationController
  # skip_before_action :root_redirection

  def home
    @article_count = Article.count
  end

  def search
  end

  def search_results
    # byebug
  end
end
