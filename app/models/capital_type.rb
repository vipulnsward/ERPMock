# == Schema Information
#
# Table name: capital_types
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  desc       :text
#  created_at :datetime
#  updated_at :datetime
#

class CapitalType < ActiveRecord::Base
has_many :capital_accounts
end
