class DirectorsController < ApplicationController

  def index
    @directors = Director.order('name asc')
  end

  def show
    director = Director.find_by(id: params["id"])

    if director == nil
      redirect_to "/directors", notice: "Director not found."
    end
  end

  def new

  end

  def create
    director = Director.new
    director.name = params[:name]
    director.save
    redirect_to "/directors"
  end

  def edit
    @director = Director.find_by(id: params["id"])
  end

  def update
    director = Director.find_by(id: params["id"])
    director.name = params[:name]
    director.save
    redirect_to "/directors"
  end

  def destroy
    director = Movie.find_by(id: params["id"])
    director.delete
    redirect_to "/directors"
  end

end
