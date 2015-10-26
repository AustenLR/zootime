class ZoosController < ApplicationController
  def index
    @zoos = Zoo.all
  end

  def new
    @zoo = Zoo.new
  end

  def create
    @zoo = Zoo.create(zoo_params)
    redirect_to @zoo
  end

  def edit
    @zoo = Zoo.find(params[:id])
  end

  def update
    @zoo = Zoo.find params[:id]
    @zoo.update zoo_params
    redirect_to @zoo
  end

  def show
    @zoo = Zoo.find(params[:id])
  end

  def destroy
    @zoo = Zoo.find params[:id]
    @zoo.destroy
    redirect_to zoos_path
  end

  private

    def zoo_params
      params.require(:zoo).permit(:location, :name)
    end

end
