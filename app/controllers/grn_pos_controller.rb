class GrnPosController < ApplicationController
  # GET /grn_pos
  # GET /grn_pos.json
  def index
    @grn_pos = GrnPo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @grn_pos }
    end
  end

  # GET /grn_pos/1
  # GET /grn_pos/1.json
  def show
    @grn_po = GrnPo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @grn_po }
    end
  end

  # GET /grn_pos/new
  # GET /grn_pos/new.json
  def new
    @grn_po = GrnPo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @grn_po }
    end
  end

  # GET /grn_pos/1/edit
  def edit
    @grn_po = GrnPo.find(params[:id])
    current_grn=@grn_po	
  end

  # POST /grn_pos
  # POST /grn_pos.json
  def create
    @grn_po = GrnPo.new(params[:grn_po])

    respond_to do |format|
      if @grn_po.save
        format.html { redirect_to @grn_po, :notice => 'Grn po was successfully created.' }
        format.json { render :json => @grn_po, :status => :created, :location => @grn_po }
        current_grn=@grn_po
      else
        format.html { render :action => "new" }
        format.json { render :json => @grn_po.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /grn_pos/1
  # PUT /grn_pos/1.json
  def update
    @grn_po = GrnPo.find(params[:id])

    respond_to do |format|
      if @grn_po.update_attributes(params[:grn_po])
        format.html { redirect_to @grn_po, :notice => 'Grn po was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @grn_po.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /grn_pos/1
  # DELETE /grn_pos/1.json
  def destroy
    @grn_po = GrnPo.find(params[:id])
    @grn_po.destroy

    respond_to do |format|
      format.html { redirect_to grn_pos_url }
      format.json { head :ok }
    end
  end

  def pdf 
   @grn_po = GrnPo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @grn_po }
    end
  end
end
