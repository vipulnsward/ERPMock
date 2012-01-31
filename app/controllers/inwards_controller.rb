class InwardsController < ApplicationController
  # GET /inwards
  # GET /inwards.json
  def index
    @inwards = Inward.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @inwards }
    end
  end

  # GET /inwards/1
  # GET /inwards/1.json
  def show
    @inward = Inward.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @inward }
    end
  end

  # GET /inwards/new
  # GET /inwards/new.json
  def new
    @inward = Inward.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @inward }
    end
  end

  # GET /inwards/1/edit
  def edit
    @inward = Inward.find(params[:id])
  end

  # POST /inwards
  # POST /inwards.json
  def create
    @inward = Inward.new(params[:inward])

    respond_to do |format|
      if @inward.save
        format.html { redirect_to @inward, :notice => 'Inward was successfully created.' }
        format.json { render :json => @inward, :status => :created, :location => @inward }
      else
        format.html { render :action => "new" }
        format.json { render :json => @inward.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /inwards/1
  # PUT /inwards/1.json
  def update
    @inward = Inward.find(params[:id])

    respond_to do |format|
      if @inward.update_attributes(params[:inward])
        format.html { redirect_to @inward, :notice => 'Inward was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @inward.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /inwards/1
  # DELETE /inwards/1.json
  def destroy
    @inward = Inward.find(params[:id])
    @inward.destroy

    respond_to do |format|
      format.html { redirect_to inwards_url }
      format.json { head :ok }
    end
  end
end
