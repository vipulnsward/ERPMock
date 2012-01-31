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

class POrder < ActiveRecord::Base

has_many :line_items, :dependent => :destroy
has_many :inward
belongs_to :supplier

accepts_nested_attributes_for :line_items#, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true

end
