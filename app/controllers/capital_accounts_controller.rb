class CapitalAccountsController < ApplicationController
  # GET /capital_accounts
  # GET /capital_accounts.json
  def index
    @capital_accounts = CapitalAccount.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @capital_accounts }
    end
  end

  # GET /capital_accounts/1
  # GET /capital_accounts/1.json
  def show
    @capital_account = CapitalAccount.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @capital_account }
    end
  end

  # GET /capital_accounts/new
  # GET /capital_accounts/new.json
  def new
    @capital_account = CapitalAccount.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @capital_account }
    end
  end

  # GET /capital_accounts/1/edit
  def edit
    @capital_account = CapitalAccount.find(params[:id])
  end

  # POST /capital_accounts
  # POST /capital_accounts.json
  def create
    @capital_account = CapitalAccount.new(params[:capital_account])

    respond_to do |format|
      if @capital_account.save
        format.html { redirect_to @capital_account, :notice => 'Capital account was successfully created.' }
        format.json { render :json => @capital_account, :status => :created, :location => @capital_account }
      else
        format.html { render :action => "new" }
        format.json { render :json => @capital_account.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /capital_accounts/1
  # PUT /capital_accounts/1.json
  def update
    @capital_account = CapitalAccount.find(params[:id])

    respond_to do |format|
      if @capital_account.update_attributes(params[:capital_account])
        format.html { redirect_to @capital_account, :notice => 'Capital account was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @capital_account.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /capital_accounts/1
  # DELETE /capital_accounts/1.json
  def destroy
    @capital_account = CapitalAccount.find(params[:id])
    @capital_account.destroy

    respond_to do |format|
      format.html { redirect_to capital_accounts_url }
      format.json { head :ok }
    end
  end
end
