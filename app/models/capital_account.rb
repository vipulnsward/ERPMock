# == Schema Information
#
# Table name: capital_accounts
#
#  id              :integer         not null, primary key
#  amount          :float
#  type            :boolean
#  capital_type_id :integer
#  tr_date         :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  tr_type         :string(255)
#

class CapitalAccount < ActiveRecord::Base
belongs_to :capital_type
end
