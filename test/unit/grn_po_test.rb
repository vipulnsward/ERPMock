# == Schema Information
#
# Table name: grn_pos
#
#  id         :integer         not null, primary key
#  grn_date   :string(255)
#  bill       :string(255)
#  billdate   :string(255)
#  inward_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class GrnPoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
