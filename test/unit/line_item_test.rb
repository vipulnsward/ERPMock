# == Schema Information
#
# Table name: line_items
#
#  id             :integer         not null, primary key
#  qty            :integer
#  item_id        :integer
#  created_at     :datetime
#  updated_at     :datetime
#  p_order_id     :integer
#  rev_qty        :integer
#  acc_qty        :integer
#  sundry_grn_id  :integer
#  s_order_id     :integer
#  req_qty        :integer
#  requisition_id :integer
#

require 'test_helper'

class LineItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
