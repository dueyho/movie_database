class MoviesController < ApplicationController

  def index
    @movies = Movie.all
    @genres = Genre.all
    render('/movies/index.html.erb')
  end

  def create
    params[:movie][:slug] = params[:movie][:name].parameterize
    @movie = Movie.create(params[:movie])

    if params[:genre] != nil
      type_of_movie = Genre.where(:id => params[:genre])
      type_of_movie.each do |type|
        @movie.genres << type
      end

      if @movie.save
        redirect_to("/movies")
      else
        render('/movies/index.html.erb')
      end

    else
      if @movie.save
        redirect_to("/movies")
      else
        render('/movies/index.html.erb')
      end
    end
  end

  def show
    @movie = Movie.find_by(:slug => params[:slug])
    render('/movies/show.html.erb')
  end

  def update
    params[:movie][:slug] = params[:movie][:name].parameterize
    @movie = Movie.find_by(:slug => params[:slug])

    @movie.update(params[:movie])

    if @movie.update(params[:movie])
      redirect_to("/movies/#{@movie.slug}")
    else
      render('/movies/show.html.erb')
    end
  end

  def destroy
    @movie = Movie.find_by(:slug => params[:slug])
    @movie.destroy
    redirect_to('/movies')
  end
end
