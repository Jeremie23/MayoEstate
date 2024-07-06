class EstatesController < ApplicationController
  def index
    @estates = Estate.all
    # The `geocoded` scope filters only flats with coordinates
    @markers = @estates.geocoded.map do |estate|
      {
        lat: estate.latitude,
        lng: estate.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {estate: estate})
      }
    end
  end

  def show
    @estate = Estate.find(params[:id])
  end

  def new
    @estate = Estate.new # Needed to instantiate the form_with
  end

  def create
    @estate = Estate.new(estate_params)
    @estate.user = current_user
    if @estate.save
      redirect_to @estate, notice: "It was successfully created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @estate = Estate.find(params[:id])
  end

  def update
    @estate = Estate.find(params[:id])
    @estate.update(estate_params)
    # No need for app/views/restaurants/update.html.erb
    redirect_to estate_path(@estate)
  end

  def destroy
    @estate = Estate.find(params[:id])
    @estate.destroy
    # No need for app/views/restaurants/destroy.html.erb
    redirect_to estates_path, status: :see_other
  end

  private

  def estate_params
    params.require(:estate).permit(:name, :description, :address, :price)
  end
end
