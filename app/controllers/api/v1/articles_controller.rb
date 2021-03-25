module Api
  module V1
    class ArticlesController < ApplicationController
      skip_before_action :root_redirection

      def index
        @articles = Article.all
        render json: @articles
      end
    end
  end
end