class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new
    @article.title = params[:title]
    @article.description = params[:description]
    @article.save
    redirect_to article_path(@article)
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update 
    @article = Article.find(params[:id])
    @article.update(title: params[:article][:title], description: params[:article][:description])
    redirect_to article_path(@article)
  end
# Query the database for the Article record that matches the :id passed to the route. 
  #this mean .find the article params[:id] and put it in an instance variable /// Store the query in an instance variable.

# Update the values passed from the form
  # use update method && pass in the params needed for the article 

  # Redirect the user to the show page so they can see the updated record.


end


  # The raise method will cause the application to pause and print out the params on an error page. 
  # You could also see the params if you called puts params.inspect; 
  # using puts would simply require you to track down the data in the Rails server log.