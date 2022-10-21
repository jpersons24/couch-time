class MoviesController < ApplicationController

  before_action :find_movie, only: [:show, :edit, :update, :destroy]

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
    
    if @movie.valid?
      redirect_to movie_path(@movie)
    else
      flash[:errors_array] = @movie.errors.full_messages
      redirect_to new_movie_path
    end
  end

  def edit
    render :edit
  end

  def update
    @movie.update(movie_params)

    redirect_to movie_path(@movie)
  end

  def destroy
    @movie.destroy
    redirect_to movies_path
  end

  private

  def find_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :genre, :release_date, :img_url)
  end

end
