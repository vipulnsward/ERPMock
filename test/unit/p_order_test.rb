# == Schema Information
#
# Table name: p_orders
#
#  id          :integer         not null, primary key
#  ref         :integer
#  issue       :string(255)
#  expires     :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  supplier_id :integer
#

require 'test_helper'

class POrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
