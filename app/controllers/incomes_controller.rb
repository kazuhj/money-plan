class IncomesController < ApplicationController

  def index
    @incomes = Income.order(created_at: :asc)
  end

  def show
    @income = Income.find(params[:id])
  end

  def new
    @income = Income.new()
  end

  def edit
    @income = Income.find(params[:id])
  end

  def create
    @income = Income.new(income_params)
    if @income.save
      redirect_to @income
    else
      render "new"
    end
  end

  def update
    @income = Income.find(params[:id])
    @income.assign_attributes(income_params)
    if @income.save
      redirect_to @income
    else
      render "new"
    end
  end

  def destroy
    @income = Income.find(params[:id])
    @income.destroy
    redirect_to :incomes
  end

  private

  def income_params
    params.require(:income).permit(:name, :description)
  end

end
