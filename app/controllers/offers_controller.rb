class OffersController < ApplicationController
  def new
    @estate = Estate.find(params[:estate_id])
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    @offer.estate = Estate.find(params[:estate_id])
    if @offer.save
      redirect_to estates_path, notice: 'Booking was sucessfully processed'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def offer_params
    params.require(:offer).permit(:comment)
  end
end
