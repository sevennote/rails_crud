class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def create
    @dog = Dog.new(dog_params)
    if @dog.save
      redirect_to @dog
    else
      render 'new'
    end
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def new
    @dog = Dog.new
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def update
    @dog = Dog.find(params[:id])
    @dog.update(dog_params)
    redirect_to @dog
  end

  def destroy
    dog = Dog.find(params[:id])
    dog.destroy
    flash[:notice] = "Dog was successfully deleted"
    redirect_to dogs_path
  end

  private

  def dog_params
    params.require(:dog).permit(:name,:breed,:age)
  end

end
