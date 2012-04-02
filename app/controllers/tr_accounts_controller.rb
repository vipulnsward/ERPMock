class TrAccountsController < ApplicationController
  # GET /tr_accounts
  # GET /tr_accounts.json
  def index
    @tr_accounts = TrAccount.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @tr_accounts }
    end
  end

  # GET /tr_accounts/1
  # GET /tr_accounts/1.json
  def show
    @tr_account = TrAccount.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @tr_account }
    end
  end

  # GET /tr_accounts/new
  # GET /tr_accounts/new.json
  def new
    @tr_account = TrAccount.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @tr_account }
    end
  end

  # GET /tr_accounts/1/edit
  def edit
    @tr_account = TrAccount.find(params[:id])
  end

  # POST /tr_accounts
  # POST /tr_accounts.json
  def create
    @tr_account = TrAccount.new(params[:tr_account])

    respond_to do |format|
      if @tr_account.save
        format.html { redirect_to @tr_account, :notice => 'Tr account was successfully created.' }
        format.json { render :json => @tr_account, :status => :created, :location => @tr_account }
      else
        format.html { render :action => "new" }
        format.json { render :json => @tr_account.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tr_accounts/1
  # PUT /tr_accounts/1.json
  def update
    @tr_account = TrAccount.find(params[:id])

    respond_to do |format|
      if @tr_account.update_attributes(params[:tr_account])
        format.html { redirect_to @tr_account, :notice => 'Tr account was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @tr_account.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tr_accounts/1
  # DELETE /tr_accounts/1.json
  def destroy
    @tr_account = TrAccount.find(params[:id])
    @tr_account.destroy

    respond_to do |format|
      format.html { redirect_to tr_accounts_url }
      format.json { head :ok }
    end
  end
end
