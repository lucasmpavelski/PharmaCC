class ReportController < ApplicationController
  def user
    @report = User.all
  end

  def product
    @report = Product.all
  end

  def sell
    @sells = Sell.all
  end

end
