class StocksController < ApplicationController
  
  def search
    if params[:stock].present?
      @stock = Stock.new_from_lookup(params[:stock])
      if @stock 
      render 'users/my_portfolio'
      else
        flash = "Er is een fout in je zoekterm! Probeer het nogmaals!"
        redirect_to my_portfolio_path
      end
    else
      "Je moet iets invullen!"
      redirect_to my_portfolio_path
    end
    
  end
     
end