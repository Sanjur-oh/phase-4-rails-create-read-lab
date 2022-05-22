class PlantsController < ApplicationController
    wrap_parameters format: []
        
  def index
    plants = Plant.all
    render json: plants
  end
  

  def show
    plant = Plant.find_by(id: params[:id])
    render json: plant
  end

#   def create
#     plant = Plant.create(name: params[:name], image: params[:image], price: params[:price])
#     render json: plant, status: :created
#   end

# def create
#     render json: Plant.create!(  params[:name], image: params[:image], price: params[:price] )
# end
def create
  plant = Plant.create(plant_params)
  render json: plant, status: :created
end

private

def plant_params
  params.permit(:name, :image, :price)
end


end
