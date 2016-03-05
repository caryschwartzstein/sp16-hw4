class DogsController < ApplicationController
  def index
  	@dogs = Dog.all
  end

  def create
    @dogs = Dog.create(dog_params)
    if @dogs.save 
      redirect_to @dogs 
    else
      render "new"
    end
  end

  def new
  	@dogs = Dog.new
  end

  def show
    @dogs = Dog.find(params[:id])
  end

  def dog_params
    params.require(:dog).permit(:name, :age)
  end
end
