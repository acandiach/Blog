class PagesController < ApplicationController
  def index

  end

  def articles
    @articles = Article.order(:articles).page(params[:page])
  end
  
  def new
    @article = Article.new
  end
  
  def create
    @article = Article.new(article_params)
    if @article.save
        redirect_to articles_path
    else
        render :new
    end
  end

  def show
    @article = Article.find(params[:id])
  end
  
  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to articles_path, notice: 'Article was successfully updated'
    else
      render :edit, status: :unprocessable_entity 
    end
  end

  def delete
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path, notice: 'Article was destroy successfully'
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
