class IclassesController < ApplicationController
  # GET /iclasses
  # GET /iclasses.json
  def index
    @iclasses = Iclass.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @iclasses }
    end
  end

  # GET /iclasses/1
  # GET /iclasses/1.json
  def show
    @iclass = Iclass.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @iclass }
    end
  end

  # GET /iclasses/new
  # GET /iclasses/new.json
  def new
    @iclass = Iclass.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @iclass }
    end
  end

  # GET /iclasses/1/edit
  def edit
    @iclass = Iclass.find(params[:id])
  end

  # POST /iclasses
  # POST /iclasses.json
  def create
    @iclass = Iclass.new(params[:iclass])

    respond_to do |format|
      if @iclass.save
        format.html { redirect_to @iclass, :notice => 'Iclass was successfully created.' }
        format.json { render :json => @iclass, :status => :created, :location => @iclass }
      else
        format.html { render :action => "new" }
        format.json { render :json => @iclass.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /iclasses/1
  # PUT /iclasses/1.json
  def update
    @iclass = Iclass.find(params[:id])

    respond_to do |format|
      if @iclass.update_attributes(params[:iclass])
        format.html { redirect_to @iclass, :notice => 'Iclass was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @iclass.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /iclasses/1
  # DELETE /iclasses/1.json
  def destroy
    @iclass = Iclass.find(params[:id])
    @iclass.destroy

    respond_to do |format|
      format.html { redirect_to iclasses_url }
      format.json { head :ok }
    end
  end
end
