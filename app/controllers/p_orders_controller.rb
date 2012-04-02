class POrdersController < ApplicationController
  # GET /p_orders
  # GET /p_orders.json
  def index
    @p_orders = POrder.find(:all, :order =>"id DESC")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @p_orders }
    end
  end

  # GET /p_orders/1
  # GET /p_orders/1.json
  def show
    @p_order = POrder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @p_order }
    end
  end

  # GET /p_orders/new
  # GET /p_orders/new.json
  def new
    @p_order = POrder.new

    3.times do
       line= @p_order.line_items.build
       line.item=Item.first	
    end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @p_order }
    end
  end

  # GET /p_orders/1/edit
  def edit
    @p_order = POrder.find(params[:id])
  end

  # POST /p_orders
  # POST /p_orders.json
  def create
    @p_order = POrder.new(params[:p_order])

    respond_to do |format|
      if @p_order.save
        format.html { redirect_to @p_order, :notice => 'P order was successfully created.' }
        format.json { render :json => @p_order, :status => :created, :location => @p_order }
      else
        format.html { render :action => "new" }
        format.json { render :json => @p_order.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /p_orders/1
  # PUT /p_orders/1.json
  def update
    @p_order = POrder.find(params[:id])

    respond_to do |format|
      if @p_order.update_attributes(params[:p_order])
        format.html { redirect_to @p_order, :notice => 'P order was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @p_order.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /p_orders/1
  # DELETE /p_orders/1.json
  def destroy
    @p_order = POrder.find(params[:id])
    @p_order.destroy

    respond_to do |format|
      format.html { redirect_to p_orders_url }
      format.json { head :ok }
    end
  end
end
