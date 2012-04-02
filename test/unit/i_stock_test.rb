# == Schema Information
#
# Table name: i_stocks
#
#  id         :integer         not null, primary key
#  amt        :integer
#  tr_type    :string(255)
#  item_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class IStockTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
