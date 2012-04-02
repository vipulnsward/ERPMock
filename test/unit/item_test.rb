# == Schema Information
#
# Table name: items
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  rate       :float
#  unit       :string(255)
#  desc       :text
#  created_at :datetime
#  updated_at :datetime
#  iclass_id  :integer
#  s_rate     :float
#  stock      :integer
#

require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
