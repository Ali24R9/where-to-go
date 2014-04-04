class CitiesController < ApplicationController

  def index
    @cities = City.all
    render('cities/index.html.erb')
  end

  def create
    params[:city][:slug] = params[:city][:name].parameterize
    @city = City.create(params[:city])

    if @city.save
      redirect_to("/cities")
    else
      render('/cities/index.html.erb')
    end
  end

  def show
    @city = City.find_by(:slug => params[:slug])
    render('/cities/show.html.erb')
  end

  def edit
    @city = City.find_by(:slug => params[:slug])
    render('/cities/edit.html.erb')
  end

  def update
    params[:city][:slug] = params[:city][:name].parameterize
    @city = City.find_by(:slug => params[:slug])

    if @city.update(params[:city])
      redirect_to("/cities/#{@city.slug}")
    else
      render('cities/show.html.erb')
    end

  end

end
