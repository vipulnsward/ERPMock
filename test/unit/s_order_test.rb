# == Schema Information
#
# Table name: s_orders
#
#  id          :integer         not null, primary key
#  ref         :string(255)
#  issue       :string(255)
#  customer_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class SOrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
