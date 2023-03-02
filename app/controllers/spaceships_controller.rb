class SpaceshipsController < ApplicationController

  def index
    @spaceships = Spaceship.all
    if params[:query].to_i.positive?
      capacity_query = params[:query].to_i
      @spaceships = Spaceship.where("capacity >= #{capacity_query}")
    elsif params[:query].present?
      @spaceships = Spaceship.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @spaceships = Spaceship.all
    end
  end

  def myindex
    @spaceships = Spaceship.where(user_id: current_user.id)
  end

  def show
    @spaceship = Spaceship.find(params[:id])
  end

  def new
    @spaceship = Spaceship.new(params[:id])
  end

  def create
    @spaceship = Spaceship.new(spaceship_params)
    @spaceship.user = current_user
    if @spaceship.save
      redirect_to spaceship_path(@spaceship)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @spaceship = Spaceship.find(params[:id])
  end

  def update
    @spaceship = Spaceship.find(params[:id])
    @spaceship = Spaceship.update(spaceship_params)
    redirect_to spaceships_path(@spaceship)
  end

  def destroy
    @spaceship = Spaceship.find(params[:id])
    @spaceship.destroy
    redirect_to spaceships_path, status: :see_other
  end

  private

  def spaceship_params
    params.require(:spaceship).permit(:name, :description, :armaments, :capacity, :price, :speed, :photo)
  end
end
