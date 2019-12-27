class CarsController < ApplicationController

  def index
        @cars = Car.all
  end

	def new
		@car = Car.new
  end

  def create
  	  @car = Car.new(car_params)
   
    @car.save
    redirect_to pooja_ki_car_path(@car)
  end

  def show
  	    @car = Car.find(params[:id])

  end

  def edit
    @car = Car.find(params[:id])
    
  end

  def update
    @car = Car.find(params[:id])
 
    if @car.update(car_params)
      redirect_to @car
    else
      render 'edit'
    end
  end

    def destroy
      @car = Car.find(params[:id])
    @car.destroy
 
    redirect_to cars_path
      
    
  end

  private
  def car_params
    params.require(:car).permit(:name)
  end 

end
 
