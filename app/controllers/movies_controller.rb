class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])

  end

  def new_form
  end

  def create_row
    @movie = Movie.new
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:img_url]
    # @movie.director_id = params[:director_id]
    @movie.save

    render("index")
  end


  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy

    render("destroy")

  end

end
