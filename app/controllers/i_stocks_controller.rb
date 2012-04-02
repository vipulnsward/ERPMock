class IStocksController < ApplicationController
  # GET /i_stocks
  # GET /i_stocks.json
  def index
    @i_stocks = IStock.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @i_stocks }
    end
  end

  # GET /i_stocks/1
  # GET /i_stocks/1.json
  def show
    @i_stock = IStock.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @i_stock }
    end
  end

  # GET /i_stocks/new
  # GET /i_stocks/new.json
  def new
    @i_stock = IStock.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @i_stock }
    end
  end

  # GET /i_stocks/1/edit
  def edit
    @i_stock = IStock.find(params[:id])
  end

  # POST /i_stocks
  # POST /i_stocks.json
  def create
    @i_stock = IStock.new(params[:i_stock])

    respond_to do |format|
      if @i_stock.save
        format.html { redirect_to @i_stock, :notice => 'I stock was successfully created.' }
        format.json { render :json => @i_stock, :status => :created, :location => @i_stock }
      else
        format.html { render :action => "new" }
        format.json { render :json => @i_stock.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /i_stocks/1
  # PUT /i_stocks/1.json
  def update
    @i_stock = IStock.find(params[:id])

    respond_to do |format|
      if @i_stock.update_attributes(params[:i_stock])
        format.html { redirect_to @i_stock, :notice => 'I stock was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @i_stock.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /i_stocks/1
  # DELETE /i_stocks/1.json
  def destroy
    @i_stock = IStock.find(params[:id])
    @i_stock.destroy

    respond_to do |format|
      format.html { redirect_to i_stocks_url }
      format.json { head :ok }
    end
  end
end
