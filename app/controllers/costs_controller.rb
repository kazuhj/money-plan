class CostsController < ApplicationController

  def index
    @costs = Cost.order(created_at: :asc)
  end

  def show
    @cost = Cost.find(params[:id])
  end

  def new
    @cost = Cost.new()
  end

  def edit
    @cost = Cost.find(params[:id])
  end

  def create
    @cost = Cost.new(cost_params)
    if @cost.save
      redirect_to @cost
    else
      render "new"
    end
  end

  def update
    @cost = Cost.find(params[:id])
    @cost.assign_attributes(cost_params)
    if @cost.save
      redirect_to @cost
    else
      render "new"
    end
  end

  def destroy
    @cost = Cost.find(params[:id])
    @cost.destroy
    redirect_to :costs
  end

  private

  def cost_params
    params.require(:cost).permit(:name, :description)
  end

end
