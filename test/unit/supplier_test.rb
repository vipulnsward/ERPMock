# == Schema Information
#
# Table name: suppliers
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  desc       :string(255)
#  street     :string(255)
#  state      :string(255)
#  country    :string(255)
#  zip        :integer
#  mail       :string(255)
#  altmail    :string(255)
#  ct1        :string(255)
#  ct2        :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class SupplierTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
