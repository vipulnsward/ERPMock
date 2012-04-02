class SupAccountController < ApplicationController

  def grn_pay
	@grn_po = GrnPo.find(params[:id])
	pord=@grn_po.inward.p_order
	sup=pord.supplier
  	tr=sup.tr_accounts.build()
 	#Calculate the total Amount here
	#
	amt=0
	pord.line_items.each do |item|
	amt= amt+ (item.acc_qty*item.item.rate)
	end
	
	tr.amount=amt
	
	tr.save	
 	redirect_to edit_tr_account_path(tr)	
  end

  def sundry_pay
	@s_grn=SundryGrn.find(params[:id])
	
  	tr=@s_grn.supplier.tr_accounts.build()	
	
  	amt=0
        @s_grn.line_items.each do |item|
        amt= amt+ (item.qty*item.item.rate)
        end
	
 	  tr.amount=amt

        tr.save
        redirect_to edit_tr_account_path(tr)


  end

  def grn_pending
  end

  def so_pay
	@s_order=SOrder.find(params[:id])
	
	cr=@s_order.customer.cr_accounts.build()

        amt=0
        @s_order.line_items.each do |item|
        amt= amt+ (item.acc_qty*item.item.rate)
        end

          cr.amount=amt

        cr.save
        redirect_to edit_cr_account_path(cr)


	
	
  end


end
