class RidesController < ApplicationController
  def new
  end

  def create
    # raise params.inspect
    @ride = Ride.new(ride_params)
    @ride.save
    if @ride.take_ride.class == String
      flash[:alert] = @ride.take_ride
    else
      flash[:alert] = "Thanks for riding the #{@ride.attraction.name}!"
    end
    redirect_to user_path(current_user)
  end

  private
    def ride_params
      params.require(:ride).permit(:attraction_id, :user_id)
    end
end
