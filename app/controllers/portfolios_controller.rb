class PortfoliosController < ApplicationController

  def index
    @portfolio_items = Portfolio.all
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def create
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))

    if @portfolio_item.save
      flash[:success] = 'A new portfolio item was created'
      redirect_to portfolios_path(@portfolio_items)
    else
      flash[:notice] = 'There was an error, please try again'
    end
  end

end
