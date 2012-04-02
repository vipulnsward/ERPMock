class CrAccountsController < ApplicationController
  # GET /cr_accounts
  # GET /cr_accounts.json
  def index
    @cr_accounts = CrAccount.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @cr_accounts }
    end
  end

  # GET /cr_accounts/1
  # GET /cr_accounts/1.json
  def show
    @cr_account = CrAccount.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @cr_account }
    end
  end

  # GET /cr_accounts/new
  # GET /cr_accounts/new.json
  def new
    @cr_account = CrAccount.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @cr_account }
    end
  end

  # GET /cr_accounts/1/edit
  def edit
    @cr_account = CrAccount.find(params[:id])
  end

  # POST /cr_accounts
  # POST /cr_accounts.json
  def create
    @cr_account = CrAccount.new(params[:cr_account])

    respond_to do |format|
      if @cr_account.save
        format.html { redirect_to @cr_account, :notice => 'Cr account was successfully created.' }
        format.json { render :json => @cr_account, :status => :created, :location => @cr_account }
      else
        format.html { render :action => "new" }
        format.json { render :json => @cr_account.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cr_accounts/1
  # PUT /cr_accounts/1.json
  def update
    @cr_account = CrAccount.find(params[:id])

    respond_to do |format|
      if @cr_account.update_attributes(params[:cr_account])
        format.html { redirect_to @cr_account, :notice => 'Cr account was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @cr_account.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cr_accounts/1
  # DELETE /cr_accounts/1.json
  def destroy
    @cr_account = CrAccount.find(params[:id])
    @cr_account.destroy

    respond_to do |format|
      format.html { redirect_to cr_accounts_url }
      format.json { head :ok }
    end
  end
end
