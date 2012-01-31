class CapitalTypesController < ApplicationController
  # GET /capital_types
  # GET /capital_types.json
  def index
    @capital_types = CapitalType.all
    
    
    @tr_supplier_sum= TrAccount.sum(:amount)	
			
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @capital_types }
    end
  end

  # GET /capital_types/1
  # GET /capital_types/1.json
  def show
    @capital_type = CapitalType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @capital_type }
    end
  end

  # GET /capital_types/new
  # GET /capital_types/new.json
  def new
    @capital_type = CapitalType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @capital_type }
    end
  end

  # GET /capital_types/1/edit
  def edit
    @capital_type = CapitalType.find(params[:id])
  end

  # POST /capital_types
  # POST /capital_types.json
  def create
    @capital_type = CapitalType.new(params[:capital_type])

    respond_to do |format|
      if @capital_type.save
        format.html { redirect_to @capital_type, :notice => 'Capital type was successfully created.' }
        format.json { render :json => @capital_type, :status => :created, :location => @capital_type }
      else
        format.html { render :action => "new" }
        format.json { render :json => @capital_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /capital_types/1
  # PUT /capital_types/1.json
  def update
    @capital_type = CapitalType.find(params[:id])

    respond_to do |format|
      if @capital_type.update_attributes(params[:capital_type])
        format.html { redirect_to @capital_type, :notice => 'Capital type was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @capital_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /capital_types/1
  # DELETE /capital_types/1.json
  def destroy
    @capital_type = CapitalType.find(params[:id])
    @capital_type.destroy

    respond_to do |format|
      format.html { redirect_to capital_types_url }
      format.json { head :ok }
    end
  end
end
