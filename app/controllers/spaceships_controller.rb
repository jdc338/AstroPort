class SpaceshipsController < ApplicationController

  def index
    @spaceships = Spaceship.all
  end

  def show
    @spaceship = Spaceship.find(params[:id])
  end

  def new
    @spaceship = Spaceship.new(params[:id])
  end

  def create
    @spaceship = Spaceship.new(spaceship_params)
    if @spaceship.save
      redirect_to spaceship_path(@spaceship)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def spaceship_params
    params.require(:spaceship).permit(:name, :description, :capacity, :price, :speed)
  end
end
