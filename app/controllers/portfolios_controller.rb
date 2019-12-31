class PortfoliosController < ApplicationController
  layout 'portfolio'
  before_action :set_portfolio_item, only: [:edit, :update, :show, :destroy]
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all

  def index
    @portfolio_items = Portfolio.by_position
  end

  def new
    @portfolio_item = Portfolio.new
    3.times { @portfolio_item.technologies.build }
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)

    if @portfolio_item.save
      flash[:success] = 'A new portfolio item was created'
      redirect_to portfolios_path(@portfolio_items)
    else
      flash[:notice] = 'There was an error, please try again'
    end
  end

  def edit
  end

  def update

    if @portfolio_item.update(portfolio_params)
      flash[:success] = 'Portfolio has been updated'
      redirect_to portfolios_path(@portfolio_items)
    else
      flash[:danger] = 'There was an error, please try again'
    end
  end

  def show
  end

  def destroy
    @portfolio_item.destroy
    flash[:success] = 'This portfolio item was deleted'
    redirect_to portfolios_path(@portfolio_items)

  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body, technologies_attributes: [:name])
  end

  def set_portfolio_item
    @portfolio_item = Portfolio.find(params[:id])
  end

end
