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

class SOrder < ActiveRecord::Base

belongs_to :customer
has_many :line_items, :dependent => :destroy

accepts_nested_attributes_for :line_items#, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true

end
