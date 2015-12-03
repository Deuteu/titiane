class ProductionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_production, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @productions = Production.all
    respond_with(@productions)
  end

  def show
    respond_with(@production)
  end

  def new
    @production = Production.new
    respond_with(@production)
  end

  def edit
  end

  def create
    @production = Production.new(production_params)
    @production.save
    respond_with(@production)
  end

  def update
    @production.update(production_params)
    respond_with(@production)
  end

  def destroy
    @production.destroy
    respond_with(@production)
  end

  private
    def set_production
      @production = Production.find(params[:id])
    end

    def production_params
      params.require(:production).permit(:year, :order, :title, :realisation, :link, :picture)
    end
end
