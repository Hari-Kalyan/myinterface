module API
  module V1
    class ArticlesController < ApplicationController

      def index
        articles = Article.order('created_at' );
        render json: {status: 'SUCCESS' , message: 'loaded articles', data: articles}, status: :ok
      end

      def show
        articles = Article.find(params[:id]);
        render json: {status: 'SUCCESS' , message: 'loaded article', data: article}, status: :ok
      end

      def create
        articles = Article.new(article_params)
        if article.save
          render json: {status: 'SUCCESS' , message: 'saved article', data: article}, status: :ok
        else
          render json: {status: 'ERRORS' , message: 'Article not saved', data: article.errors}, status: :unprocessable_entry
        end
      end
    end



      def destroy
        articles = Article.find(params[:id]);
        articles.destroy
        render json: {status: 'SUCCESS' , message: 'deleted article', data: article}, status: :ok
      end

      def update
        article = Article.find(params[:id]);
        if article.update_attributes(article_params)
          render json: {status: 'SUCCESS' , message: 'updated article', data: article}, status: :ok
        else
          render json: {status: 'SUCCESS' , message: 'Cant update article', data: article}, status: :ok
  end
    end
    end



  end
