class ArticlesController < ApplicationController
    before_action :find_article, except: [:new, :create]

    def show
    end

    def edit
    end

    def new
        @article = Article.new 
    end

    def update
        @article = Article.create(title: params[:article][:title], content: params[:article][:content])
        redirect_to @article
    end

    def create
        @article = Article.create(title: params[:article][:title], content: params[:article][:content])
        render json: @article
    end
    
    def destroy
        @article = Article.find(params[:id])
        @article.destroy
        redirect_to root_path
    end

    def find_article
        @article = Article.find(params[:id])
    end

end
