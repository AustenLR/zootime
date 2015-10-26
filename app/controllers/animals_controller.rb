class AnimalsController < ApplicationController
  def index
    @zoo = Zoo.find(params[:zoo_id])
  end

  def new
    @zoo = Zoo.find(params[:zoo_id])
    @animal = Animal.new
  end
  
  def create
    @zoo = Zoo.find(params[:zoo_id])
    @animal = @zoo.animals.new(animal_params)
    @animal.save
    redirect_to @animal 
  end

  def edit
    @animal = Animal.find params[:id]
  end

  def update
    @animal = Animal.find params[:id]
    @animal.update animal_params
    @animal.save
    redirect_to @animal
  end

  def show
    @animal = Animal.find params[:id]
  end

  def destroy
    @animal = Animal.find params[:id]
    @animal.destroy
  end

  private

  def animal_params
    params.require(:animal).permit(:name, :species)
  end

end
