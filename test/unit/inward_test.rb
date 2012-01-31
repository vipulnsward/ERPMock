# == Schema Information
#
# Table name: inwards
#
#  id         :integer         not null, primary key
#  indate     :string(255)
#  intime     :string(255)
#  chalan     :string(255)
#  chalandate :string(255)
#  p_order_id :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class InwardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
