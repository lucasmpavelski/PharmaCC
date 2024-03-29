class SellsController < ApplicationController

  load_and_authorize_resource
  # GET /sells
  # GET /sells.json
  def index
    @sells = Sell.all
  end

  # GET /sells/1
  # GET /sells/1.json
  def show
    @sell = Sell.find(params[:id])
  end

  # GET /sells/new
  # GET /sells/new.json
  def new
    @sell = Sell.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sell }
    end
  end

  # GET /sells/1/edit
  def edit
    @sell = Sell.find(params[:id])
  end

  # POST /sells
  # POST /sells.json
  def create
    @sell = current_user.sells.new(params[:sell])

    respond_to do |format|
      if @sell.save

        for product in @sell.products
          product.amount = product.amount - 1
          product.save!
        end

        format.html { redirect_to @sell, notice: 'Sell was successfully created.' }
        format.json { render json: @sell, status: :created, location: @sell }
      else
        format.html { render action: "new" }
        format.json { render json: @sell.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sells/1
  # PUT /sells/1.json
  def update
    @sell = Sell.find(params[:id])

    respond_to do |format|
      if @sell.update_attributes(params[:sell])
        format.html { redirect_to @sell, notice: 'Sell was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @sell.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sells/1
  # DELETE /sells/1.json
  def destroy
    @sell = Sell.find(params[:id])
    @sell.destroy

    respond_to do |format|
      format.html { redirect_to sells_url }
      format.json { head :ok }
    end
  end
end
