class MoviesController < ApplicationController

  # before_action :run_this_method, only: [:before, :these, :methods, :only]
  before_action :find_movie, only: [:show, :edit, :update]

  def index
    @movies = Movie.all
    render :index
  end

  def show  
    render :show
  end

  def new
    @movie = Movie.new()
    render :new
  end

  def create
    @movie = Movie.create(movie_params)

    redirect_to movie_path(@movie)
  end

  def edit
    render :edit
  end

  def update
    @movie.update(movie_params)

    redirect_to movie_path(@movie)
  end




  private

  def find_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :genre, :release_date, :img_url)
  end

end
