# == Schema Information
#
# Table name: tr_accounts
#
#  id          :integer         not null, primary key
#  amount      :float
#  tr_date     :string(255)
#  tr_type     :string(255)
#  cheque      :string(255)
#  supplier_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class TrAccount < ActiveRecord::Base
belongs_to :supplier
end
