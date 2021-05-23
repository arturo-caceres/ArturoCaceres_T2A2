class PlantsController < ApplicationController
  def index
    @plants = Plant.all
  end

  def new
    @plant = Plant.new
  end

  def show
    @plant = Plant.find(params[:id])
  end

  def create
    @plant = Plant.new(plant_params)

    if @plant.save
      redirect_to @plant
    else
      render :new
    end
  end

  def edit
    @plant = Plant.find(params[:id])
  end

  def update
    @plant = Plant.find(params[:id])

    if @plant.update(plant_params)
      redirect_to @plant
    else
      render :edit
    end
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :age)
  end
end
