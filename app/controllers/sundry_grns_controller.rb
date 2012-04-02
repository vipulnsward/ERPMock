class SundryGrnsController < ApplicationController
  # GET /sundry_grns
  # GET /sundry_grns.json
  def index
    @sundry_grns = SundryGrn.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @sundry_grns }
    end
  end

  # GET /sundry_grns/1
  # GET /sundry_grns/1.json
  def show
    @sundry_grn = SundryGrn.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @sundry_grn }
    end
  end

  # GET /sundry_grns/new
  # GET /sundry_grns/new.json
  def new
    @sundry_grn = SundryGrn.new

    3.times do
       line= @sundry_grn.line_items.build
    end


    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @sundry_grn }
    end
  end

  # GET /sundry_grns/1/edit
  def edit
    @sundry_grn = SundryGrn.find(params[:id])
  end

  # POST /sundry_grns
  # POST /sundry_grns.json
  def create
    @sundry_grn = SundryGrn.new(params[:sundry_grn])

    respond_to do |format|
      if @sundry_grn.save
        format.html { redirect_to @sundry_grn, :notice => 'Sundry grn was successfully created.' }
        format.json { render :json => @sundry_grn, :status => :created, :location => @sundry_grn }
      else
        format.html { render :action => "new" }
        format.json { render :json => @sundry_grn.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sundry_grns/1
  # PUT /sundry_grns/1.json
  def update
    @sundry_grn = SundryGrn.find(params[:id])

    respond_to do |format|
      if @sundry_grn.update_attributes(params[:sundry_grn])
        format.html { redirect_to @sundry_grn, :notice => 'Sundry grn was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @sundry_grn.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sundry_grns/1
  # DELETE /sundry_grns/1.json
  def destroy
    @sundry_grn = SundryGrn.find(params[:id])
    @sundry_grn.destroy

    respond_to do |format|
      format.html { redirect_to sundry_grns_url }
      format.json { head :ok }
    end
  end
end
