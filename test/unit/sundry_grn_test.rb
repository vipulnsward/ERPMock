# == Schema Information
#
# Table name: sundry_grns
#
#  id          :integer         not null, primary key
#  bill        :string(255)
#  billdate    :string(255)
#  issue       :string(255)
#  supplier_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class SundryGrnTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
