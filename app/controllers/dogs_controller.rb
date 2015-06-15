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
  end

  private

  def dog_params
    p params
    p params[:dog][:name]
    params.require(:dog).permit(:name,:breed,:age)
  end

end
