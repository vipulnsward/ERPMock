class SOrdersController < ApplicationController
  # GET /s_orders
  # GET /s_orders.json
  def index
    @s_orders = SOrder.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @s_orders }
    end
  end

  # GET /s_orders/1
  # GET /s_orders/1.json
  def show
    @s_order = SOrder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @s_order }
    end
  end

  # GET /s_orders/new
  # GET /s_orders/new.json
  def new
    @s_order = SOrder.new

   3.times do
        line= @s_order.line_items.build
    end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @s_order }
    end
  end

  # GET /s_orders/1/edit
  def edit
    @s_order = SOrder.find(params[:id])
  end

  # POST /s_orders
  # POST /s_orders.json
  def create
    @s_order = SOrder.new(params[:s_order])

    respond_to do |format|
      if @s_order.save
        format.html { redirect_to @s_order, :notice => 'S order was successfully created.' }
        format.json { render :json => @s_order, :status => :created, :location => @s_order }
      else
        format.html { render :action => "new" }
        format.json { render :json => @s_order.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /s_orders/1
  # PUT /s_orders/1.json
  def update
    @s_order = SOrder.find(params[:id])

    respond_to do |format|
      if @s_order.update_attributes(params[:s_order])
        format.html { redirect_to @s_order, :notice => 'S order was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @s_order.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /s_orders/1
  # DELETE /s_orders/1.json
  def destroy
    @s_order = SOrder.find(params[:id])
    @s_order.destroy

    respond_to do |format|
      format.html { redirect_to s_orders_url }
      format.json { head :ok }
    end
  end
end
