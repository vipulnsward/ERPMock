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

require 'test_helper'

class TrAccountTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
