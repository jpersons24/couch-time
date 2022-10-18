class MoviesController < ApplicationController

  # lifecycle method -> run this method before actions
  # before_action :run_this_method, only: [:before, :these, :methods, :only]
  before_action :find_movie, only: [:show]

  def index
    @movies = Movie.all
    render :index
  end

  def show
    render :show
  end

  private

  def find_movie
    @movie = Movie.find(params[:id])
  end

end
