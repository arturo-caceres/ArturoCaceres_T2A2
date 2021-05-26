class PlantsController < ApplicationController
  def index
    @user_created_plants = current_user.plants
    @user_created_plants = @user_created_plants.filter_by_name(params[:query]) if params[:query].present?

    @user_bought_plants = current_user.bought_plants
    @user_bought_plants = @user_bought_plants.filter_by_name(params[:query]) if params[:query].present?

    @collection = Plant.where(nil)
    @collection = @collection.filter_by_name(params[:query]) if params[:query].present?
    @collection = @collection.select { |plant| plant.user_id != current_user.id }
  end

  def search
    p params[:query]
    redirect_to action: "index", query: params[:query]
  end

  def new
    @plant = Plant.new
  end

  def show
    @plant = Plant.find(params[:id])
  end

  def create
    @plant = current_user.plants.build(plant_params)

    if @plant.save
      redirect_to @plant
    else
      p @plant.errors
      render :new
    end
  end

  def buy
    @plant = Plant.find(params[:id])

    @plant.buyer = current_user
    if @plant.save
      redirect_to @plant
    else
      render :index
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

  def destroy
    @plant = Plant.find(params[:id])
    @plant.destroy

    redirect_to plants_path
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :age, :height_flora, :height_pot, :price, :other_information, :image)
  end
end
