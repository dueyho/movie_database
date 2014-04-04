class GenresController < ApplicationController

  def index
    @genres = Genre.all
    render('/genres/index.html.erb')
  end

  def create
    params[:genre][:slug] = params[:genre][:name].parameterize
    @genre = Genre.create(params[:genre])


    if @genre.save
      redirect_to("/genres")
    else
      render('/genres/index.html.erb')
    end
  end

  def show
    @genre = Genre.find_by(:slug => params[:slug])
    render('/genres/show.html.erb')
  end

  def update
    params[:genre][:slug] = params[:genre][:name].parameterize
    @genre = Genre.find_by(:slug => params[:slug])

    @genre.update(params[:genre])

    if @genre.update(params[:genre])
      redirect_to("/genres/#{@genre.slug}")
    else
      render('/genres/show.html.erb')
    end
  end

  def destroy
    @genre = Genre.find_by(:slug => params[:slug])
    @genre.destroy
    redirect_to('/genres')
  end
end
