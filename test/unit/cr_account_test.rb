# == Schema Information
#
# Table name: cr_accounts
#
#  id          :integer         not null, primary key
#  amount      :float
#  cr_date     :string(255)
#  cr_type     :string(255)
#  cheque      :string(255)
#  customer_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class CrAccountTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
