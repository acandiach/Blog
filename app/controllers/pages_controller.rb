class PagesController < ApplicationController
  def index

  end

  def articles
    @articles = Article.all
  end
  
  def new
    @article = Article.new
  end
  
  def create
    data_article = params.require(:article).permit(:title, :content)
    @article = Article.new(data_article)
    if @article.save
        redirect_to articles_path
    else
        render :new
    end
  end
end
